import { patchAll } from "./patch-readme.js";
import * as fs from "fs";

const codeBlock = (path, lang, code) =>
  `
*${path}:*
\`\`\`${lang}\n${code.trim()}\n\`\`\`
`.trim();

const main = () => {
  const source = fs.readFileSync("./README.md", "utf8").toString();

  const patchData = {
    example: codeBlock(
      "Main.purs",
      "hs",
      fs
        .readFileSync("./test/SampleReadme.purs", "utf8")
        .toString()
        .replace(/module [A-Za-z.]*/g, "module Main")
    ),
  };

  const result = patchAll(patchData)(source);

  fs.writeFileSync("./README.md", result, "utf8");
};

main();
