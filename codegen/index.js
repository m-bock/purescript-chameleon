const fs = require("fs");

const replaceMap = {
  class: "class_",
  type: "type_",
  data: "data_",
  in: "in_",
};

// ----------------------------------------------------------------------------
// Elements
// ----------------------------------------------------------------------------

const genElement = ([tagName, { children, description }]) => {
  tagName = replaceMap[tagName] || tagName;

  return children
    ? `
-- | ${description}
${kebabToCamel(
  tagName
)} :: forall html a. Html html => Array (Prop a) -> Array (html a) -> html a
${kebabToCamel(
  tagName
)} props children = elem (ElemName "${tagName}") props children

-- | ${description} [No Attributes]
${kebabToCamel(
  tagName
)}_ :: forall html a. Html html => Array (html a) -> html a
${kebabToCamel(tagName)}_ children = elem (ElemName "${tagName}") [] children

`
    : `
-- | ${description}
${kebabToCamel(
  tagName
)} :: forall html a. Html html => Array (Prop a) -> html a
${kebabToCamel(tagName)} props = elem (ElemName "${tagName}") props []

-- | ${description} [No Attributes]
${kebabToCamel(tagName)}_ :: forall html a. Html html => html a
${kebabToCamel(tagName)}_ = elem (ElemName "${tagName}") [] []

`;
};

const genElements = (scope) => (data) => {
  const code = Object.entries(data).map(genElement).join("");

  return `
module VirtualDOM.${scope}.Elements where

import VirtualDOM.Class (class Html, ElemName(..), Prop, elem)

${code}
`;
};

// ----------------------------------------------------------------------------
// KeyedElements
// ----------------------------------------------------------------------------

const genKeyedElement = ([tagName, { children, description }]) => {
  tagName2 = replaceMap[tagName] || tagName;

  return children
    ? `
-- | ${description}
${kebabToCamel(
  tagName2
)} :: forall html a. Html html => Array (Prop a) -> Array (Key /\\ html a) -> html a
${kebabToCamel(
  tagName2
)} props children = elemKeyed (ElemName "${tagName}") props children

-- | ${description} [No Attributes]
${kebabToCamel(
  tagName2
)}_ :: forall html a. Html html => Array (Key /\\ html a) -> html a
${kebabToCamel(
  tagName2
)}_ children = elemKeyed (ElemName "${tagName}") [] children

`
    : `
-- | ${description}
${kebabToCamel(
  tagName
)} :: forall html a. Html html =>  Array (Prop a) -> html a
${kebabToCamel(tagName)} props = elemKeyed (ElemName "${tagName}") props []

-- | ${description} [No Attributes]
${kebabToCamel(tagName)}_ :: forall html a. Html html =>  html a
${kebabToCamel(tagName)}_ = elemKeyed (ElemName "${tagName}") [] []
`;
};

const genKeyedElements = (scope) => (data) => {
  const code = Object.entries(data).map(genKeyedElement).join("");

  return `
module VirtualDOM.${scope}.KeyedElements where

import Data.Tuple.Nested (type (/\\))
import VirtualDOM.Class (class Html, Key, ElemName(..), Prop, elemKeyed)

${code}
`;
};

// ----------------------------------------------------------------------------
// Attributes
// ----------------------------------------------------------------------------

const genAttribute = ([attrName, { description, type }], untyped) => {
  attrName = replaceMap[attrName] || attrName;

  let variants = {};

  const type2 = untyped
    ? "String"
    : typeof type === "string"
    ? type
    : type.length
    ? `Variant(${type[1]
        .map((x) => {
          if (typeof x !== "string") {
            variants[x[0]] = x[1];
            return `"${x[0]}" :: ${x[1]}`;
          } else {
            variants[x] = null;
            return `"${x}" :: Unit`;
          }
        })
        .join(", ")})`
    : "String";

  code = `
-- | ${description}
${kebabToCamel(attrName)} :: forall a. ${type2} -> Prop a
${kebabToCamel(attrName)} val = Attr "${attrName}" (toAttrib val)
`;

  return { code, variants };
};

const genAttributes = (scope, untyped) => (data) => {
  let variants = [];

  const code = Object.entries(data)
    .map((entry) => {
      const result = genAttribute(entry, untyped);
      variants = { ...variants, ...result.variants };
      return result.code;
    })
    .join("");

  return `
module VirtualDOM.${scope}.Attributes where

import Prelude

import Data.String as Str
import Data.Symbol (class IsSymbol, reflectSymbol)
import Data.Variant (Variant)
import Data.Variant as V
import Prim.Row as Row
import Prim.RowList (class RowToList, RowList)
import Prim.RowList as RL
import VirtualDOM.Class (Prop(..))
import Type.Proxy (Proxy(..))

${genSection("class IsAttrib")}

class IsAttrib a where
  toAttrib :: a -> String

instance IsAttrib String where
  toAttrib = identity

instance IsAttrib Boolean where
  toAttrib = if _ then "true" else "false"

instance IsAttrib Number where
  toAttrib = show

instance IsAttrib Int where
  toAttrib = show

instance IsAttrib (Array String) where
  toAttrib = Str.joinWith " "

instance (RowToList r rl, IsAttribVariantRL rl r) => IsAttrib (Variant r) where
  toAttrib = toAttribVariantRL (Proxy :: Proxy rl)

${genSection("class IsAttribVariantRL")}

class IsAttribVariantRL :: RowList Type -> Row Type -> Constraint
class IsAttribVariantRL rl r where
  toAttribVariantRL :: Proxy rl -> Variant r -> String

instance IsAttribVariantRL RL.Nil r where
  toAttribVariantRL _ _ = ""

instance
  ( IsAttribVariantRL rl r'
  , Row.Cons sym Unit r' r
  , IsSymbol sym
  ) =>
  IsAttribVariantRL (RL.Cons sym Unit rl) r where
  toAttribVariantRL _ =
    toAttribVariantRL (Proxy :: _ rl)
      # V.on prxSym (const $ reflectSymbol prxSym)
    where
    prxSym = Proxy :: _ sym

else instance
  ( IsAttribVariantRL rl r'
  , Row.Cons sym a r' r
  , IsSymbol sym
  , IsAttrib a
  ) =>
  IsAttribVariantRL (RL.Cons sym a rl) r where
  toAttribVariantRL _ =
    toAttribVariantRL (Proxy :: _ rl)
      # V.on prxSym toAttrib
    where
    prxSym = Proxy :: _ sym

${genSection("Attributes")}

${code}

${genSection("Variant Constructors")}

${Object.entries(variants).map(genVariantConstructor).join("\n\n")}
`;
};

// ----------------------------------------------------------------------------
// Gen Variant Constructor
// ----------------------------------------------------------------------------

const genVariantConstructor = ([k, v]) =>
  v === null
    ? `
_${kebabToCamel(k)} :: forall r. Variant ("${k}" :: Unit | r)
_${kebabToCamel(k)} = V.inj (Proxy :: Proxy "${k}") unit
  `.trim()
    : `
_${kebabToCamel(k)} :: forall r. ${v} -> Variant ("${k}" :: ${v} | r)
_${kebabToCamel(k)} = V.inj (Proxy :: Proxy "${k}")
`.trim();

// ----------------------------------------------------------------------------
// Events
// ----------------------------------------------------------------------------

const genEvent = ([eventName, { description, type }]) => {
  eventName = replaceMap[eventName] || eventName;

  return !type
    ? `
-- | ${description}
on${upperFirst(eventName)} :: forall a. a -> Prop a
on${upperFirst(eventName)} msg = Event "${eventName}" \\_ -> Just msg
  `
    : `
-- | ${description}
on${upperFirst(eventName)} :: forall a. (${type} -> a) -> Prop a
on${upperFirst(
        eventName
      )} mkMsg = Event "${eventName}" (fromForeign >>> map mkMsg)
  `;
};

const genEvents = (scope) => (data) => {
  const code = Object.entries(data).map(genEvent).join("");

  return `
module VirtualDOM.${scope}.Events where

import Prelude

import Control.Monad.Except (runExcept)
import Data.Either (hush)
import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Foreign as F
import Foreign.Index as FI
import VirtualDOM.Class (Prop(..))

class FromForeign a where
  fromForeign :: Foreign -> Maybe a

instance FromForeign String where
  fromForeign for = hush $ runExcept do
    tgt <- FI.readProp "target" for
    val <- FI.readProp "value" tgt
    str <- F.readString val
    pure str

${code}
  `;
};

// ----------------------------------------------------------------------------
// Utils
// ----------------------------------------------------------------------------

const genSection = (title) =>
  `
------------------------------------------------------------------------------- 
--- ${title}
-------------------------------------------------------------------------------
`.trim();

const toLowerCase = (str) => {
  return str.toLowerCase();
};

const upperFirst = (str) => {
  return str.charAt(0).toUpperCase() + str.slice(1);
};

const kebabToCamel = (str) => {
  return str
    .replace(/-([a-z])/g, function (g) {
      return g[1].toUpperCase();
    })
    .replace(/[/]/g, "_")
    .replace(/[-]/g, "_")
    .replace(/[:]/g, "_")
    ;
};

const readJSON = (filePath) => JSON.parse(fs.readFileSync(filePath).toString());

// ----------------------------------------------------------------------------
// Main
// ----------------------------------------------------------------------------

const genHTML = () => {
  const scope = "HTML";

  const elements1 = readJSON(`codegen/${scope}/elements.json`);
  const elements2 = genElements(scope)(elements1);
  fs.writeFileSync(`src/VirtualDOM/${scope}/Elements.purs`, elements2);

  const keyedElements1 = readJSON(`codegen/${scope}/elements.json`);
  const keyedElements2 = genKeyedElements(scope)(keyedElements1);
  fs.writeFileSync(
    `src/VirtualDOM/${scope}/KeyedElements.purs`,
    keyedElements2
  );

  const attributes1 = readJSON(`codegen/${scope}/attributes.json`);
  const attributes2 = genAttributes(scope)(attributes1);
  fs.writeFileSync(`src/VirtualDOM/${scope}/Attributes.purs`, attributes2);

  const events1 = readJSON(`codegen/${scope}/events.json`);
  const events2 = genEvents(scope)(events1);
  fs.writeFileSync(`src/VirtualDOM/${scope}/Events.purs`, events2);
};

const genSVG = () => {
  const scope = "SVG";
  const elements1 = readJSON(`codegen/${scope}/elements.json`);
  const elements2 = genElements(scope)(elements1);
  fs.writeFileSync(`src/VirtualDOM/${scope}/Elements.purs`, elements2);

  const keyedElements1 = readJSON(`codegen/${scope}/elements.json`);
  const keyedElements2 = genKeyedElements(scope)(keyedElements1);
  fs.writeFileSync(
    `src/VirtualDOM/${scope}/KeyedElements.purs`,
    keyedElements2
  );

  const attributes1 = readJSON(`codegen/${scope}/attributes.json`);
  const attributes2 = genAttributes(scope, true)(attributes1);
  fs.writeFileSync(`src/VirtualDOM/${scope}/Attributes.purs`, attributes2);
};

const main = () => {
  genHTML();
  genSVG();
};

main();
