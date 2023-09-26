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
        "*1password.com/*", // 1password
        "*go/*", // golinks
      ],
      browser: "Google Chrome"
    }
  ]
};
