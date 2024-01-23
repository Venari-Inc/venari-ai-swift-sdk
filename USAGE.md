<!-- Start SDK Example Usage [usage] -->
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