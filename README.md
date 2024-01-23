# OpenAPI


<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" /></a> ![Platform](https://img.shields.io/badge/Platform-iOS-lightgray) ![Swift Version](https://img.shields.io/badge/Swift-5.6-orange.svg)

Venari AI Sneaker Inference API: The Venari AI Sneaker Inference API allows you to submit images, either as single requests or in batches, and receive inference results specifying which sneaker is present in the picture. The API also supports asynchronous requests using webhooks for improved flexibility and responsiveness.

## Requirements

The SDK supports iOS 13 and later.

<!-- Start SDK Installation [installation] -->
## SDK Installation

### Swift Package Manager

You can add `VenariAI` to your project directly in Xcode `(File > Add Packages...)` or by adding it to your project's Package.swift file.
You can do it by directly referencing the repository url `git@github.com:Venari-Inc/venari-ai-swift-sdk.git`;
<!-- No SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```swift
import Foundation
import VenariAI

let client = Client(security: .apiKey("YOUR_API_KEY"))

let response = try await client.inference.sneakerId(
    request: Shared.SneakersIdRequest(
        url: "https://www.shutterstock.com/shutterstock/photos/647477452/display_1500/stock-photo-urban-teenager-legs-silhouette-wearing-sneakers-647477452.jpg", 
        confidenceThreshold: 25, 
        custom: [
            "neural": "string", 
        ], 
        restrictiveMode: false, 
        variants: false
    )
)

switch response.data {
case .twoHundredApplicationJsonObject(let twoHundredApplicationJsonObject):
    // Handle response
    break
case .fourHundredApplicationJsonObject(let fourHundredApplicationJsonObject):
    // Handle response
    break
case .fourHundredAndThreeApplicationJsonObject(let fourHundredAndThreeApplicationJsonObject):
    // Handle response
    break
case .fiveHundredApplicationJsonObject(let fiveHundredApplicationJsonObject):
    // Handle response
    break
case .empty:
    // Handle empty response
    break
}

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
<!-- No Available Resources and Operations [operations] -->

<!-- Start Authentication [security] -->
## Authentication

### Global Security Schemes

The SDK supports the following security scheme globally through the `Shared.Security` type:

| Name      | Type      | Scheme    |
| --------- | --------- | --------- |
| `.apiKey` | apiKey    | API key   |

You can set the appropriate security parameters by passing a `Shared.Security` value for the `security` parameter when initializing the `Client` instance. For example:

```swift
import Foundation
import VenariAI

let client = Client(security: .apiKey("YOUR_API_KEY"))

let response = try await client.inference.sneakerId(
    request: Shared.SneakersIdRequest(
        url: "https://www.shutterstock.com/shutterstock/photos/647477452/display_1500/stock-photo-urban-teenager-legs-silhouette-wearing-sneakers-647477452.jpg", 
        confidenceThreshold: 25, 
        custom: [
            "neural": "string", 
        ], 
        restrictiveMode: false, 
        variants: false
    )
)

switch response.data {
case .twoHundredApplicationJsonObject(let twoHundredApplicationJsonObject):
    // Handle response
    break
case .fourHundredApplicationJsonObject(let fourHundredApplicationJsonObject):
    // Handle response
    break
case .fourHundredAndThreeApplicationJsonObject(let fourHundredAndThreeApplicationJsonObject):
    // Handle response
    break
case .fiveHundredApplicationJsonObject(let fiveHundredApplicationJsonObject):
    // Handle response
    break
case .empty:
    // Handle empty response
    break
}

```
<!-- End Authentication [security] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->