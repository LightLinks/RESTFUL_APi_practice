# OpenAIKit

![Swift](http://img.shields.io/badge/swift-5.7-brightgreen.svg)

OpenAIKit is a Swift package used to communicate with the [OpenAI API](https://beta.openai.com/docs/api-reference/introduction).

## Setup
Add the dependency to Package.swift:

~~~~swift
dependencies: [
    ...
    .package(url: "https://github.com/dylanshine/openai-kit.git", from: "1.0.0")
],
targets: [
    .target(name: "App", dependencies: [
        .product(name: "OpenAIKit", package: "openai-kit"),
    ]),
~~~~

It is encouraged to use environment variables to inject the OpenAI API key, instead of hardcoding it in the source code.

~~~~bash
# .env

OPENAI_API_KEY="YOUR-API-KEY"
OPENAI_ORGANIZATION="YOUR-ORGANIZATION"
~~~~
⚠️ OpenAI strongly recommends developers of client-side applications proxy requests through a separate backend service to keep their API key safe. API keys can access and manipulate customer billing, usage, and organizational data, so it's a significant risk to [expose](https://nshipster.com/secrets/) them.

Create a `OpenAIKit.Client` using a httpClient and configuration.

~~~~swift

var apiKey: String {
    ProcessInfo.processInfo.environment["OPENAI_API_KEY"]!
}

var organization: String {
    ProcessInfo.processInfo.environm