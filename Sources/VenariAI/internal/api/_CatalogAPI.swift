// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _CatalogAPI: CatalogAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func catalogItemUpdate(request: Operations.CatalogItemUpdateRequestBody) async throws -> Response<Operations.CatalogItemUpdateResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureCatalogItemUpdateRequest(with: configuration, request: request)
            },
            handleResponse: handleCatalogItemUpdateResponse
        )
    }
    
    public func catalogItemAdd(request: Shared.CatalogItem) async throws -> Response<Operations.CatalogItemAddResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureCatalogItemAddRequest(with: configuration, request: request)
            },
            handleResponse: handleCatalogItemAddResponse
        )
    }

}

// MARK: - Request Configuration

private func configureCatalogItemUpdateRequest(with configuration: URLRequestConfiguration, request: Operations.CatalogItemUpdateRequestBody) throws {
    configuration.path = "/v1/catalog/item"
    configuration.method = .put
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .userAgent
}

private func configureCatalogItemAddRequest(with configuration: URLRequestConfiguration, request: Shared.CatalogItem) throws {
    configuration.path = "/v1/catalog/item"
    configuration.method = .post
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleCatalogItemUpdateResponse(response: Client.APIResponse) throws -> Operations.CatalogItemUpdateResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.CatalogItemUpdateResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredApplicationJsonObject(try JSONDecoder().decode(Operations.CatalogItemUpdateCatalogResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 403 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndThreeApplicationJsonObject(try JSONDecoder().decode(Operations.CatalogItemUpdateCatalogResponseResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 500 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fiveHundredApplicationJsonObject(try JSONDecoder().decode(Operations.CatalogItemUpdateCatalogResponse500ResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleCatalogItemAddResponse(response: Client.APIResponse) throws -> Operations.CatalogItemAddResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .twoHundredApplicationJsonObject(try JSONDecoder().decode(Operations.CatalogItemAddResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 400 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredApplicationJsonObject(try JSONDecoder().decode(Operations.CatalogItemAddCatalogResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 403 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fourHundredAndThreeApplicationJsonObject(try JSONDecoder().decode(Operations.CatalogItemAddCatalogResponseResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    } else if httpResponse.statusCode == 500 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .fiveHundredApplicationJsonObject(try JSONDecoder().decode(Operations.CatalogItemAddCatalogResponse500ResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

