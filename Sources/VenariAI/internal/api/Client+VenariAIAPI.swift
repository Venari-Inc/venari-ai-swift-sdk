// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Client: VenariAIAPI {
    // MARK: - Root operations 

    // MARK: - Scoped API operations

    public var inference: InferenceAPI {
        return _InferenceAPI(client: self)
    }

    public var search: SearchAPI {
        return _SearchAPI(client: self)
    }

    public var catalog: CatalogAPI {
        return _CatalogAPI(client: self)
    }
}

// MARK: - Request Configuration

// MARK: - Response Handlers

