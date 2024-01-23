// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct Product {
        public let ageGroup: String
        public let brandName: String
        public let cat1: String
        public let colorWeights: [Shared.ColorWeights]
        public let gender: String
        public let image: String
        @DecimalSerialized
        public private(set) var productId: Double
        public let productTitle: String
        public let styleId: String
        public let upcs: [Shared.Upcs]
        public let cat2: String?
        public let cat3: String?
        public let cat4: String?
        public let colorway: String?
        public let designer: String?
        public let releaseDate: String?
        public let shaftStyle: String?
        public let silhouette: String?
        public let upperMaterial: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(ageGroup: String, brandName: String, cat1: String, colorWeights: [Shared.ColorWeights], gender: String, image: String, productId: Double, productTitle: String, styleId: String, upcs: [Shared.Upcs], cat2: String? = nil, cat3: String? = nil, cat4: String? = nil, colorway: String? = nil, designer: String? = nil, releaseDate: String? = nil, shaftStyle: String? = nil, silhouette: String? = nil, upperMaterial: String? = nil) {
            self.ageGroup = ageGroup
            self.brandName = brandName
            self.cat1 = cat1
            self.colorWeights = colorWeights
            self.gender = gender
            self.image = image
            self._productId = DecimalSerialized<Double>(wrappedValue: productId)
            self.productTitle = productTitle
            self.styleId = styleId
            self.upcs = upcs
            self.cat2 = cat2
            self.cat3 = cat3
            self.cat4 = cat4
            self.colorway = colorway
            self.designer = designer
            self.releaseDate = releaseDate
            self.shaftStyle = shaftStyle
            self.silhouette = silhouette
            self.upperMaterial = upperMaterial
        }
    }
}

extension Shared.Product: Codable {
    enum CodingKeys: String, CodingKey {
        case ageGroup = "age_group"
        case brandName = "brand_name"
        case cat1
        case colorWeights = "color_weights"
        case gender
        case image
        case productId = "product_id"
        case productTitle = "product_title"
        case styleId = "style_id"
        case upcs
        case cat2
        case cat3
        case cat4
        case colorway
        case designer
        case releaseDate = "release_date"
        case shaftStyle = "shaft_style"
        case silhouette
        case upperMaterial = "upper_material"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ageGroup = try container.decode(String.self, forKey: .ageGroup)
        self.brandName = try container.decode(String.self, forKey: .brandName)
        self.cat1 = try container.decode(String.self, forKey: .cat1)
        self.colorWeights = try container.decode([Shared.ColorWeights].self, forKey: .colorWeights)
        self.gender = try container.decode(String.self, forKey: .gender)
        self.image = try container.decode(String.self, forKey: .image)
        self._productId = try container.decode(DecimalSerialized<Double>.self, forKey: .productId)
        self.productTitle = try container.decode(String.self, forKey: .productTitle)
        self.styleId = try container.decode(String.self, forKey: .styleId)
        self.upcs = try container.decode([Shared.Upcs].self, forKey: .upcs)
        self.cat2 = try container.decodeIfPresent(String.self, forKey: .cat2)
        self.cat3 = try container.decodeIfPresent(String.self, forKey: .cat3)
        self.cat4 = try container.decodeIfPresent(String.self, forKey: .cat4)
        self.colorway = try container.decodeIfPresent(String.self, forKey: .colorway)
        self.designer = try container.decodeIfPresent(String.self, forKey: .designer)
        self.releaseDate = try container.decodeIfPresent(String.self, forKey: .releaseDate)
        self.shaftStyle = try container.decodeIfPresent(String.self, forKey: .shaftStyle)
        self.silhouette = try container.decodeIfPresent(String.self, forKey: .silhouette)
        self.upperMaterial = try container.decodeIfPresent(String.self, forKey: .upperMaterial)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.ageGroup, forKey: .ageGroup)
        try container.encode(self.brandName, forKey: .brandName)
        try container.encode(self.cat1, forKey: .cat1)
        try container.encode(self.colorWeights, forKey: .colorWeights)
        try container.encode(self.gender, forKey: .gender)
        try container.encode(self.image, forKey: .image)
        try container.encode(self._productId, forKey: .productId)
        try container.encode(self.productTitle, forKey: .productTitle)
        try container.encode(self.styleId, forKey: .styleId)
        try container.encode(self.upcs, forKey: .upcs)
        try container.encodeIfPresent(self.cat2, forKey: .cat2)
        try container.encodeIfPresent(self.cat3, forKey: .cat3)
        try container.encodeIfPresent(self.cat4, forKey: .cat4)
        try container.encodeIfPresent(self.colorway, forKey: .colorway)
        try container.encodeIfPresent(self.designer, forKey: .designer)
        try container.encodeIfPresent(self.releaseDate, forKey: .releaseDate)
        try container.encodeIfPresent(self.shaftStyle, forKey: .shaftStyle)
        try container.encodeIfPresent(self.silhouette, forKey: .silhouette)
        try container.encodeIfPresent(self.upperMaterial, forKey: .upperMaterial)
    }
}

extension Shared.Product {
    var productIdWrapper: DecimalSerialized<Double> {
        return _productId
    }
}
