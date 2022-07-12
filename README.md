# Universal Login Page Integration Template

This template is used to create a Universal Login Page integration.

## Documentation

- [Universal Login](https://auth0.com/docs/authenticate/login/auth0-universal-login)
- [Universal Login page templates](https://auth0.com/docs/customize/universal-login-pages/universal-login-page-templates)

## Getting started

This repo contains all the files required to create an integration that our mutual customers can install. In the `integration` folder you'll find an `installation_guide.md` file. This file contains the Markdown-formatted instructions that tenant admins will use to install and configure your integration. This file has a number of `TODO` items that indicate what needs to be added. Your guide should retain the same general format and provided Auth0 installation steps.

## Build and test your login page template

We've included a few helpful scripts in a `Makefile` that should help you build and submit a quality integration. You can develop your integration locally and use the commands below to lint, test, and deploy to a tenant.

The commands below require Docker to be installed and running on your local machine (though no direct Docker experience is necessary). Download and install Docker [using these steps for your operating system](https://docs.docker.com/get-docker/). 

* `make lint` - this will check and format your JS code according to our recommendations. This check is run in a GitHub Action located in `.github/workflows/lint.yaml`.
* `make deploy_init` - use this command to initialize deployments to a test tenant. You will need to [create a machine-to-machine application](https://auth0.com/docs/get-started/auth0-overview/create-applications/machine-to-machine-apps) authorized for the Management API with permissions `read:branding`, `update:branding`, and `delete:branding`.
* `make deploy_get_token` - use this command after `deploy_init` to generate an access token
* `make deploy_update` - use this command to update the custom login page template with the `deploy/template.html` file contents
* `make deploy_get` - use this command to see the custom login page template for your tenant
* `make deploy_delete` - use this command to remove the custom login page template

## Submit for review

When your integration has been written and tested, it's time to submit it for review.

1. Replace the `media/256x256-logo.png` file with an image of the same size and format (256 pixel square on a transparent background)
1. If you provided value-proposition columns and would like to include images, replace the `media/460x260-column-*.png` files with images of the same size and format; otherwise, delete these images before submitting
1. Run `make zip` in the root of the integration package and upload the resulting archive to the Jira ticket.

If you have any questions or problems with this, please reply back on the support ticket!

## What is Auth0?

Auth0 helps you to:

* Add authentication with [multiple authentication sources](https://auth0.com/docs/identityproviders), either social like **Google, Facebook, Microsoft Account, LinkedIn, GitHub, Twitter, Box, Salesforce, among others**, or enterprise identity systems like **Windows Azure AD, Google Apps, Active Directory, ADFS or any SAML Identity Provider**.
* Add authentication through more traditional [username/password databases](https://auth0.com/docs/connections/database/custom-db).
* Add support for [linking different user accounts](https://auth0.com/docs/link-accounts) with the same user.
* Support for generating signed [JSON Web Tokens](https://auth0.com/docs/jwt) to call your APIs and **flow the user identity** securely.
* Analytics of how, when, and where users are logging in.
* Pull data from other sources and add it to the user profile, through [JavaScript rules](https://auth0.com/docs/rules/current).

## Issue Reporting

If you have found a bug or if you have a feature request, please report them at this repository issues section. Please do not report security vulnerabilities on the public GitHub issue tracker. The [Responsible Disclosure Program](https://auth0.com/whitehat) details the procedure for disclosing security issues.

## Author

[Auth0](https://auth0.com)

## License

This project is licensed under the MIT license. See the [LICENSE](LICENSE) file in this repo for more info.
