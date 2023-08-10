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
        "*dutchie.dev/*", // Dutchie
        "*getdutchie.slack.com/*", // Dutchie Slack links
        "*github.com/GetDutchie/*", // Github
        "*paradigmreach.com/*", // paradigm
        "*google.com/calendar/*", // Calendar links
        "*docs.google.com/*", // Google office links 
        "*docker.com/*", // Docker links
        "*microsoftonline.com/*", // Azure
        "*microsoft.com/*", // Azure
        "*microsoft.net/*", // Azure
        "*1password.com/*", // 1password
        "*dutchie.splunkcloud.com/*", // Splunk
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
