const fs = require("fs");

const replaceMap = {
  class: "class_",
  type: "type_",
  data: "data_",
};

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

const readJSON = (filePath) => JSON.parse(fs.readFileSync(filePath).toString());

const gen = (scope) => {
  const elements1 = readJSON(`codegen/${scope}/elements.json`);
  const elements2 = genElements(scope)(elements1);
  fs.writeFileSync(`src/TaglessVirtualDOM/${scope}/Elements.purs`, elements2);
};

const main = () => {
  gen("HTML");
};

main();
