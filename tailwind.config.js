module.exports = {
  future: {
    removeDeprecatedGapUtilities: true,
    purgeLayersByDefault: true,
  },
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [require("@tailwindcss/custom-forms")],
  // prefix: "tw-",
  purge: {
    content: ["./index.html", "./dist/app.js"],
  },
};
