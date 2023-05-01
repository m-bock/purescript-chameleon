const fs = require("fs");

const replaceMap = {
  class: "class_",
  type: "type_",
  data: "data_",
};

// ----------------------------------------------------------------------------
// Elements
// ----------------------------------------------------------------------------

const genElement = ([tagName, { children, description }]) => {
  tagName = replaceMap[tagName] || tagName;

  return children
    ? `
-- | ${description}
${kebapToCamel(
  tagName
)} :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
${kebapToCamel(
  tagName
)} props children = elem (ElemName "${tagName}") props children
`
    : `
-- | ${description}
${kebapToCamel(
  tagName
)} :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
${kebapToCamel(tagName)} props = elem (ElemName "${tagName}") props []
`;
};

const genElements = (scope) => (data) => {
  const code = Object.entries(data).map(genElement).join("");

  return `
module TaglessVirtualDOM.${scope}.Elements where

import TaglessVirtualDOM (class Html, ElemName(..), Prop, elem)

${code}
`;
};

// ----------------------------------------------------------------------------
// KeyedElements
// ----------------------------------------------------------------------------

const genKeyedElement = ([tagName, { children, description }]) => {
  tagName = replaceMap[tagName] || tagName;

  return children
    ? `
-- | ${description}
${kebapToCamel(
  tagName
)} :: forall html ctx a. Html html => Array (Prop a) -> Array (Key /\\ html ctx a) -> html ctx a
${kebapToCamel(
  tagName
)} props children = elemKeyed (ElemName "${tagName}") props children
`
    : `
-- | ${description}
${kebapToCamel(
  tagName
)} :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
${kebapToCamel(tagName)} props = elemKeyed (ElemName "${tagName}") props []
`;
};

const genKeyedElements = (scope) => (data) => {
  const code = Object.entries(data).map(genKeyedElement).join("");

  return `
module TaglessVirtualDOM.${scope}.KeyedElements where

import Data.Tuple.Nested (type (/\\))
import TaglessVirtualDOM (class Html, Key, ElemName(..), Prop, elemKeyed)

${code}
`;
};

// ----------------------------------------------------------------------------
// Attributes
// ----------------------------------------------------------------------------

const genAttribute = ([attrName, { description, type }]) => {
  attrName = replaceMap[attrName] || attrName;

  return `
-- | ${description}
${kebapToCamel(attrName)} :: forall a. ${type} -> Prop a
${kebapToCamel(attrName)} val = Attr "${attrName}" (toAttrib val)
`;
};

const genAttributes = (scope) => (data) => {
  const code = Object.entries(data).map(genAttribute).join("");

  return `
module TaglessVirtualDOM.${scope}.Attributes where

import Prelude

import Data.String as Str
import Data.Symbol (class IsSymbol, reflectSymbol)
import Data.Variant (Variant)
import Data.Variant as V
import Prim.Row as Row
import Prim.RowList (class RowToList, RowList)
import Prim.RowList as RL
import TaglessVirtualDOM (Prop(..))
import Type.Proxy (Proxy(..))

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

${code}
`;
};

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
module TaglessVirtualDOM.${scope}.Events where

import Prelude

import Control.Monad.Except (runExcept)
import Data.Either (hush)
import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Foreign as F
import Foreign.Index as FI
import TaglessVirtualDOM (Prop(..))

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

const toLowerCase = (str) => {
  return str.toLowerCase();
};

const upperFirst = (str) => {
  return str.charAt(0).toUpperCase() + str.slice(1);
};

const kebapToCamel = (str) => {
  return str.replace(/-([a-z])/g, function (g) {
    return g[1].toUpperCase();
  });
};

const readJSON = (filePath) => JSON.parse(fs.readFileSync(filePath).toString());

// ----------------------------------------------------------------------------
// Main
// ----------------------------------------------------------------------------

const genHTML = () => {
  const scope = "HTML";

  const elements1 = readJSON(`codegen/${scope}/elements.json`);
  const elements2 = genElements(scope)(elements1);
  fs.writeFileSync(`src/TaglessVirtualDOM/${scope}/Elements.purs`, elements2);

  const keyedElements1 = readJSON(`codegen/${scope}/elements.json`);
  const keyedElements2 = genKeyedElements(scope)(keyedElements1);
  fs.writeFileSync(
    `src/TaglessVirtualDOM/${scope}/KeyedElements.purs`,
    keyedElements2
  );

  const attributes1 = readJSON(`codegen/${scope}/attributes.json`);
  const attributes2 = genAttributes(scope)(attributes1);
  fs.writeFileSync(
    `src/TaglessVirtualDOM/${scope}/Attributes.purs`,
    attributes2
  );

  const events1 = readJSON(`codegen/${scope}/events.json`);
  const events2 = genEvents(scope)(events1);
  fs.writeFileSync(`src/TaglessVirtualDOM/${scope}/Events.purs`, events2);
};

const genSVG = () => {
  const scope = "SVG";

  const elements1 = readJSON(`codegen/${scope}/elements.json`);
  const elements2 = genElements(scope)(elements1);
  fs.writeFileSync(`src/TaglessVirtualDOM/${scope}/Elements.purs`, elements2);

  const keyedElements1 = readJSON(`codegen/${scope}/elements.json`);
  const keyedElements2 = genKeyedElements(scope)(keyedElements1);
  fs.writeFileSync(
    `src/TaglessVirtualDOM/${scope}/KeyedElements.purs`,
    keyedElements2
  );

  const attributes1 = readJSON(`codegen/${scope}/attributes.json`);
  const attributes2 = genAttributes(scope)(attributes1);
  fs.writeFileSync(
    `src/TaglessVirtualDOM/${scope}/Attributes.purs`,
    attributes2
  );
};

const main = () => {
  genHTML();
  genSVG();
};

main();
