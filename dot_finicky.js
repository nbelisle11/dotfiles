module.exports = {
  defaultBrowser: "Brave Browser",
  rewrite: [
    {
      // Redirect all urls to use https
      match: ({ url }) => url.protocol === "http",
      url: { protocol: "https" }
    }
  ],
  handlers: [
    {
      // Use chrome for work specific stuff
      match: [
        "*dutchie.atlassian.net/*", // Atlassian
        "*.okta.com/*", // OKTA
        "*lucid.app/*", // Lucid suite
        "*.loom.com/*", // Loom
        "*.asana.com/*", // Asana
        "*go/*", // golinks
      ],
      browser: "Google Chrome"
    }
  ]
};
