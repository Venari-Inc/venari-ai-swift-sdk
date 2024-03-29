// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A response model
    public enum SneakerIdBatchResponse {
        case empty
        case twoHundredApplicationJsonObject(Operations.SneakerIdBatchResponseBody)
        case fourHundredApplicationJsonObject(Operations.SneakerIdBatchInferenceResponseBody)
        case fourHundredAndThreeApplicationJsonObject(Operations.SneakerIdBatchInferenceResponseResponseBody)
        case fiveHundredApplicationJsonObject(Operations.SneakerIdBatchInferenceResponse500ResponseBody)

        var isEmpty: Bool {
            if case .empty = self {
                return true
            } else {
                return false
            }
        }

        public func twoHundredApplicationJsonObject() throws -> Operations.SneakerIdBatchResponseBody {
            guard case .twoHundredApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }

        public func fourHundredApplicationJsonObject() throws -> Operations.SneakerIdBatchInferenceResponseBody {
            guard case .fourHundredApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }

        public func fourHundredAndThreeApplicationJsonObject() throws -> Operations.SneakerIdBatchInferenceResponseResponseBody {
            guard case .fourHundredAndThreeApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }

        public func fiveHundredApplicationJsonObject() throws -> Operations.SneakerIdBatchInferenceResponse500ResponseBody {
            guard case .fiveHundredApplicationJsonObject(let value) = self else {
                throw VenariAIError.missingResponseData
            }
            return value
        }
    }
}
