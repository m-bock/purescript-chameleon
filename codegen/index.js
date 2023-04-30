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

const genAttribute = ([attrName, { description }]) => {
  attrName = replaceMap[attrName] || attrName;

  return `
-- | ${description}
${kebapToCamel(attrName)} :: forall a. String -> Prop a
${kebapToCamel(attrName)} = Attr "${attrName}"  
`;
};

const genAttributes = (scope) => (data) => {
  const code = Object.entries(data).map(genAttribute).join("");

  return `
module TaglessVirtualDOM.${scope}.Attributes where

import Prelude

import TaglessVirtualDOM (Prop(..))

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

${code}
`;
};


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
