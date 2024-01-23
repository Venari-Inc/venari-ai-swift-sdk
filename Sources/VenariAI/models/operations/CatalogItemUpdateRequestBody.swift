// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct CatalogItemUpdateRequestBody {
        /// The internal product id.
        public let externalId: String?
        /// The status of the item.
        public let status: Operations.Status?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter externalId: The internal product id.
        /// - Parameter status: The status of the item.
        ///
        public init(externalId: String? = nil, status: Operations.Status? = nil) {
            self.externalId = externalId
            self.status = status
        }
    }
}

extension Operations.CatalogItemUpdateRequestBody: Codable {
    enum CodingKeys: String, CodingKey {
        case externalId = "external_id"
        case status
    }
}
