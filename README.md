# Velo Payments Open API Specification

This repository contains the Velo Payments [Open API 3.0](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md) specification.

For the Velo Payments Open API, you can find the Open API specification under the folder `/spec`.

You can view the Velo Payments Open API documentation - [here](https://velopaymentsapi.github.io/VeloOpenApi/)

To request your API keys [contact](mailto:info@velopayments.com) us!

# Getting Started Examples

To help you get started using the Velo Payments Open API, please see the examples below.

## velo-java-examples

This [repository](https://github.com/velopaymentsapi/velo-java-examples) contains simple code examples you can see how to use the Velo Payments API.

These are simple step by step examples which show you common use cases.

## velo-java-sdk

[Here you can find an open source, production ready library](https://github.com/velopaymentsapi/velo-java-sdk) you can in corporate in your enterprise Java application to
interact with the Velo Payments Open API.

## CI Build & Deploy

The API docs are built for each branch and published via [GitHub pages](https://velopaymentsapi.github.io/VeloOpenApi/). You can view a particular branch's docs using the path format: `version/<branch_name>`.

Swagger UI is available for each branch under the `/swagger` directory. Browsing other branch's API specs are possible using a `?branch=<branch_name>` query parameter. The reason `version` isn't used to switch branches (like with API docs) is because `version` parameter is reserved by GitHub.

The build process for both API docs and Swagger UI is roughly the same. A particular branch is checked out, static assets are built, stored temporarily, `gh-pages` is checked out, assets are moved into place, comitted and pushed.

The only major difference between the two are that while the API docs are using ReDoc to generate a unique set of static HTML pages for every build, the Swagger UI project is a standlone SPA that uses a very small webpack configuration and will change very rarely as it only provides a static "shell" to read the OpenAPI specs under the `/version/<branch_name>/` directory.
