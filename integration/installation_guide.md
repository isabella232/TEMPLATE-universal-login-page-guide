[[TODO: Summary text that does not duplicate the listing content]]

## Prerequisites

1. An Auth0 account and tenant. [Sign up for free](https://auth0.com/signup).
2. [[TODO: Instructions for creating an account with your service]]

## Set up [[TODO: Your service name]]

To configure the integration with [[TODO: Your service name]]:

[[TODO: Add steps as an ordered list for configuring your service]]

## Modify the Auth0 Universal Login page

The way in which you install this integration changes depending on which version of [Universal Login](https://auth0.com/docs/authenticate/login/auth0-universal-login) you are using.

### New Universal Login experience

To add this integration to the New Universal Login experience, you must add a custom login page template. Before you start, please see [the documentation on Universal Login page templates](https://auth0.com/docs/customize/universal-login-pages/universal-login-page-templates). Make sure all customize options are turned **off**.

To use page templates, you must set up a [custom domain](https://auth0.com/docs/customize/custom-domains). Follow the instructions to add and verify your domain before making the changes below.

Add your snippet in the `<head>` section and the `init()` method call before the ending `</body>` tag. See below for an example with the script tag embedded within the page template.

[[TODO: Add a code example for a complete page template]]

Make sure the login request happens on your custom domain, **not** the default `auth0.com` domain.

### Classic Universal Login experience

To add this integration to the Classic Universal Login experience, you must customize the login page code. Before you start, please see [the documentation on advanced customization](https://auth0.com/docs/customize/universal-login-pages/customization-classic#advanced-customization).

1. Go to **Branding > Universal Login** in the Auth0 Dashboard.
1. In the **Login** view, if the **HTML** tab is not highlighted, select it.
1. Add your snippet in the `<head>` section, as in this example:

[[TODO: Add a code example]]

## Results

[[TODO: Explain what the customer should expect when everything is configured and deployed]]

## Troubleshooting

[[TODO: Common issues or links to troubleshooting resources]]
