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
${tagName} :: forall html ctx a. Html html => Array (Prop a) -> Array (html ctx a) -> html ctx a
${tagName} props children = elem "${tagName}" props children
`
    : `
-- | ${description}
${tagName} :: forall html ctx a. Html html => Array (Prop a) -> html ctx a
${tagName} props = elem "${tagName}" props []
`;
};

const genElements = (scope) => (data) => {
  const code = Object.entries(data).map(genElement).join("");

  return `
module TaglessVirtualDOM.${scope}.Elements where

import TaglessVirtualDOM (class Html, Prop, elem)

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

const genEvent = ([eventName,  description ]) => {
  eventName = replaceMap[eventName] || eventName;

  return `
  
  `;
};

const genEvents = (scope) => (data) => {

}


// ----------------------------------------------------------------------------
// Utils
// ----------------------------------------------------------------------------

const kebapToCamel = (str) => {
  return str.replace(/-([a-z])/g, function (g) {
    return g[1].toUpperCase();
  });
}

// ----------------------------------------------------------------------------
// Main
// ----------------------------------------------------------------------------

const readJSON = (filePath) => JSON.parse(fs.readFileSync(filePath).toString());

const gen = (scope) => {
  const elements1 = readJSON(`codegen/${scope}/elements.json`);
  const elements2 = genElements(scope)(elements1);
  fs.writeFileSync(`src/TaglessVirtualDOM/${scope}/Elements.purs`, elements2);

  const attributes1 = readJSON(`codegen/${scope}/attributes.json`);
  const attributes2 = genAttributes(scope)(attributes1);
  fs.writeFileSync(
    `src/TaglessVirtualDOM/${scope}/Attributes.purs`,
    attributes2
  );
};

const main = () => {
  gen("HTML");
};

main();
