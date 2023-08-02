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
        "*dutchie.zoom.us/*", // Zoom
        "*dutchie.com/*", // Dutchie
        "*getdutchie.slack.com/*", // Dutchie Slack links
        "*github.com/GetDutchie/*", // Github
        "*google.com/calendar/*", // Calendar links
        "*docs.google.com/*", // Google office links 
        "*docker.com/*", // Docker links
        "*1password.com/*", // 1password
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
