module.exports = {
  defaultBrowser: "Brave Browser",
  rewrite: [
    {
      // Redirect all urls to use https
      match: ({ url }) => url.protocol === "http",
      url: { protocol: "https" }
    },
    {
      // Redirect all tyler apps to use https
      match: ({ url }) => url.host === "synchro.tylerkindy.com",
      url: { host: "tkindy-synchro.herokuapp.com" }
    }
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
        "*.dropbox.com/*", // form survey thing
        "*.hsforms.com/*", // forms
        "*lucid.app/*", // Lucid suite
        "*hubspot.slack.com/*", // Hubspot Slack
        "*hubspot.pagerduty.com/*", // Hubspot Slack
      ],
      browser: "Google Chrome"
    }
  ]
};