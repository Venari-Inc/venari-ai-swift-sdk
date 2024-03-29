// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct Upcs {
        @DecimalSerialized
        public private(set) var size: Double
        public let upc: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(size: Double, upc: String) {
            self._size = DecimalSerialized<Double>(wrappedValue: size)
            self.upc = upc
        }
    }
}

extension Shared.Upcs: Codable {
    enum CodingKeys: String, CodingKey {
        case size
        case upc
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self._size = try container.decode(DecimalSerialized<Double>.self, forKey: .size)
        self.upc = try container.decode(String.self, forKey: .upc)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self._size, forKey: .size)
        try container.encode(self.upc, forKey: .upc)
    }
}

extension Shared.Upcs {
    var sizeWrapper: DecimalSerialized<Double> {
        return _size
    }
}
