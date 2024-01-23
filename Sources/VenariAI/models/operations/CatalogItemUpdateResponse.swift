// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum CatalogItemUpdateResponse {
        case empty
        case twoHundredApplicationJsonObject(Operations.CatalogItemUpdateResponseBody)
        case fourHundredApplicationJsonObject(Operations.CatalogItemUpdateCatalogResponseBody)
        case fourHundredAndThreeApplicationJsonObject(Operations.CatalogItemUpdateCatalogResponseResponseBody)
        case fiveHundredApplicationJsonObject(Operations.CatalogItemUpdateCatalogResponse500ResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func twoHundredApplicationJsonObject() throws -> Operations.CatalogItemUpdateResponseBody {
            guard case .twoHundredApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }

        public func fourHundredApplicationJsonObject() throws -> Operations.CatalogItemUpdateCatalogResponseBody {
            guard case .fourHundredApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }

        public func fourHundredAndThreeApplicationJsonObject() throws -> Operations.CatalogItemUpdateCatalogResponseResponseBody {
            guard case .fourHundredAndThreeApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }

        public func fiveHundredApplicationJsonObject() throws -> Operations.CatalogItemUpdateCatalogResponse500ResponseBody {
            guard case .fiveHundredApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }
    }
}
