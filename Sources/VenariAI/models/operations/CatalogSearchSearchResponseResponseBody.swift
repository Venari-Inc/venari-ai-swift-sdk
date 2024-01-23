// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// Internal server error
    public struct CatalogSearchSearchResponseResponseBody {
        public let code: String?
        public let error: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(code: String? = nil, error: String? = nil) {
            self.code = code
            self.error = error
        }
    }
}

extension Operations.CatalogSearchSearchResponseResponseBody: Codable {
    enum CodingKeys: String, CodingKey {
        case code
        case error
    }
}
