const process = require("process");
const postcssElmTailwind = require("postcss-elm-tailwind")({
  // prefix: "tw-",
  elmFile: "src/Tailwind/Main.elm", // change where the generated Elm module is saved
  elmModuleName: "Tailwind.Main", // this must match the file name or Elm will complain
  nameStyle: "snake", // "snake" for snake case, "camel" for camel case
  formats: {
    svg: {
      elmFile: "src/Tailwind/Svg.elm",
      elmModuleName: "Tailwind.Svg",
    },
    string: {
      elmFile: "src/Tailwind/String.elm",
      elmModuleName: "Tailwind.String",
    },
  },
});

module.exports = {
  plugins: [
    require("tailwindcss"),
    ...(process.env.NODE_ENV === "production" ? [] : [postcssElmTailwind]),
    // require("autoprefixer"),
  ],
};
