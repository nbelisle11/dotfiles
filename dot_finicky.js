module.exports = {
  defaultBrowser: "Brave Browser",
  rewrite: [
    {
      // Redirect all urls to use https
      match: ({ url }) => url.protocol === "http",
      url: { protocol: "https" }
    },
    // {
    //   // Redirect all tyler apps to use https
    //   match: ({ url }) => url.host === "synchro.tylerkindy.com",
    //   url: { host: "tkindy-synchro.herokuapp.com" }
    // }
  ],
  handlers: [
    {
      match: [
        "*.fidelity.com/*", // match fidelity.com subdomains
        "*.schwab.com/*",
      ],
      browser: "Brave Browser"
    },
    {
      match: [
        "*.hubteam.com/*", // hubtools
        "*.hubteamqa.com/*", // hubtools
        "*.hubspot.com/*", // hubspot
        "*.hubspotqa.com/*", // hubspot
        "*.hubspotcentral.com/*", // JIRA
        "*.hubspotcentral.net/*", // VPN
        "*.okta.com/*", // OKTA
        "*.google.com/*", // GSuite (hopefully)
        "*.amazonaws.com/*", // AWS
        "*.monday.com/*", // form survey thing
        "*.dropbox.com/*", // Dropbox
        "*.hsforms.com/*", // forms
        "*lucid.app/*", // Lucid suite
        "*hubspot.slack.com/*", // Hubspot Slack
        "*hubspot.pagerduty.com/*", // Pagerduty
        "*figma.com/*", // A mockup software I guess
        "*hubspot.hosted.panopto.com/*", // Video hosting platform for recordings
        "*hubspot.zoom.us/*", // Zoom
        "*hubspot.service-now.com/*", // Service Now
        "*hubspot.signalfx.com/*", // SFX
        "*hubspot.stackenterprise.co/*", // HS StackExchange
        "*.loom.com/*", // Loom
        "*.asana.com/*", // Asana
      ],
      browser: "Google Chrome"
    }
  ]
};