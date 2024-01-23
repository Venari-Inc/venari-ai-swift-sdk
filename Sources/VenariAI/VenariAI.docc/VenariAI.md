# ``VenariAI``

Venari AI Sneaker Inference API: The Venari AI Sneaker Inference API allows you to submit images, either as single requests or in batches, and receive inference results specifying which sneaker is present in the picture. The API also supports asynchronous requests using webhooks for improved flexibility and responsiveness.

## Base URL

The base URL for accessing the Venari AI Sneaker Inference API is `https://api.venari.ai/`.

## Authentication

To use the API, you need to include an API key in the request headers:

```plaintext
X-Api-Key: YOUR_API_KEY
```

`VenariAI` is a Swift library which provides functionality for making requests to the API using a modern, easy-to-use Swift API:

### SDK Example Usage

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

### Getting started
- ``VenariAIAPI`` defines the available API operations, including operations which are logically grouped by name (for example under ``VenariAIAPI/inference``).
- ``Client`` is the main object used when making requests to the API, and implements ``VenariAIAPI`` to provide this functionality.  Each available API method is exposed as an `async` function, which you can call and `await` its response and handle any errors that are thrown.
- API methods that require input data take a *request object* describing these parameters, and each method returns a *response object* containing information about the response. You can read more about these in <doc:Client#Request-and-response-objects>.
- Requests to the API must be authenticated. You can provide authentication credentials by initializing ``Client`` with a ``Shared/Security`` value.
- If an error occurs when making a request to the API, a ``VenariAIError`` error is thrown with more information about what went wrong.

## Topics

### Connecting to the API

- ``Client``
- ``Shared/Security``
- ``Response``
- ``ResponseWithHeaders``
- ``ResponseFields``
- ``ResponseHeaders``
- ``VenariAIError``

### API operations

- ``VenariAI/VenariAIAPI``
- ``InferenceAPI``
- ``SearchAPI``
- ``CatalogAPI``

### Server configuration

### Shared models
- ``Shared/CatalogItem``
- ``Shared/ColorWeights``
- ``Shared/Images``
- ``Shared/MetaData``
- ``Shared/Product``
- ``Shared/ProductCode``
- ``Shared/Products``
- ``Shared/ProductWithUUID``
- ``Shared/ProductWithUUIDColorWeights``
- ``Shared/ProductWithUUIDUpcs``
- ``Shared/SearchResult``
- ``Shared/SearchSimilarByItemResults``
- ``Shared/SearchSimilarByItemResultsProducts``
- ``Shared/SimilarItemPayload``
- ``Shared/SneakersIdAsyncRequest``
- ``Shared/SneakersIdBatchAsyncRequest``
- ``Shared/SneakersIdBatchRequest``
- ``Shared/SneakersIdRequest``
- ``Shared/Status``
- ``Shared/TypeModel``
- ``Shared/Upcs``
- ``Shared/Variants``

### Request objects

### Response objects
- ``Operations/CatalogItemAddResponse``
- ``Operations/CatalogItemUpdateResponse``
- ``Operations/CatalogSearchResponse``
- ``Operations/ProductDataResponse``
- ``Operations/SimilarByItemResponse``
- ``Operations/SneakerIdResponse``
- ``Operations/SneakerIdAsyncResponse``
- ``Operations/SneakerIdBatchResponse``
- ``Operations/SneakerIdBatchAsyncResponse``

### Other models
- ``Operations/CatalogItemAddCatalogResponse500ResponseBody``
- ``Operations/CatalogItemAddCatalogResponseResponseBody``
- ``Operations/CatalogItemAddCatalogResponseBody``
- ``Operations/CatalogItemAddResponseBody``
- ``Operations/CatalogItemUpdateCatalogResponse500ResponseBody``
- ``Operations/CatalogItemUpdateCatalogResponseResponseBody``
- ``Operations/CatalogItemUpdateCatalogResponseBody``
- ``Operations/CatalogItemUpdateRequestBody``
- ``Operations/CatalogItemUpdateResponseBody``
- ``Operations/CatalogItemUpdateStatus``
- ``Operations/CatalogSearchRequest``
- ``Operations/CatalogSearchResponseBody``
- ``Operations/CatalogSearchSearchResponseResponseBody``
- ``Operations/CatalogSearchSearchResponseBody``
- ``Operations/ProductDataRequest``
- ``Operations/ProductDataResponseBody``
- ``Operations/ProductDataSearchResponseResponseBody``
- ``Operations/ProductDataSearchResponseBody``
- ``Operations/SimilarByItemResponseBody``
- ``Operations/SimilarByItemSearchResponseResponseBody``
- ``Operations/SimilarByItemSearchResponseBody``
- ``Operations/SneakerIdInferenceResponse500ResponseBody``
- ``Operations/SneakerIdInferenceResponseResponseBody``
- ``Operations/SneakerIdInferenceResponseBody``
- ``Operations/SneakerIdResponseBody``
- ``Operations/SneakerIdAsyncInferenceResponse500ResponseBody``
- ``Operations/SneakerIdAsyncInferenceResponseResponseBody``
- ``Operations/SneakerIdAsyncInferenceResponseBody``
- ``Operations/SneakerIdAsyncResponseBody``
- ``Operations/SneakerIdBatchInferenceResponse500ResponseBody``
- ``Operations/SneakerIdBatchInferenceResponseResponseBody``
- ``Operations/SneakerIdBatchInferenceResponseBody``
- ``Operations/SneakerIdBatchResponseBody``
- ``Operations/SneakerIdBatchAsyncInferenceResponse500ResponseBody``
- ``Operations/SneakerIdBatchAsyncInferenceResponseResponseBody``
- ``Operations/SneakerIdBatchAsyncInferenceResponseBody``
- ``Operations/SneakerIdBatchAsyncResponseBody``
- ``Operations/Status``

### Type groupings
- ``Operations``
- ``Shared``

### Data types

- ``AnyValue``
- ``APIValue``

### Internal data types

- ``DateConvertible``
- ``DateOnly``
- ``DateTime``
- ``DecimalSerialized``
- ``DoubleConvertible``
