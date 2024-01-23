// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum SneakerIdAsyncResponse {
        case empty
        case twoHundredApplicationJsonObject(Operations.SneakerIdAsyncResponseBody)
        case fourHundredApplicationJsonObject(Operations.SneakerIdAsyncInferenceResponseBody)
        case fourHundredAndThreeApplicationJsonObject(Operations.SneakerIdAsyncInferenceResponseResponseBody)
        case fiveHundredApplicationJsonObject(Operations.SneakerIdAsyncInferenceResponse500ResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func twoHundredApplicationJsonObject() throws -> Operations.SneakerIdAsyncResponseBody {
            guard case .twoHundredApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }

        public func fourHundredApplicationJsonObject() throws -> Operations.SneakerIdAsyncInferenceResponseBody {
            guard case .fourHundredApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }

        public func fourHundredAndThreeApplicationJsonObject() throws -> Operations.SneakerIdAsyncInferenceResponseResponseBody {
            guard case .fourHundredAndThreeApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }

        public func fiveHundredApplicationJsonObject() throws -> Operations.SneakerIdAsyncInferenceResponse500ResponseBody {
            guard case .fiveHundredApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }
    }
}