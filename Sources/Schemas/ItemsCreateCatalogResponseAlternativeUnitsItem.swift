import Foundation

public struct ItemsCreateCatalogResponseAlternativeUnitsItem: Codable, Hashable, Sendable {
    public let unitCode: String
    public let factor: String
    public let isDefaultSale: Bool
    public let isDefaultPurchase: Bool
    public let salePriceExclVat: Nullable<String>
    public let purchasePriceExclVat: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        unitCode: String,
        factor: String,
        isDefaultSale: Bool,
        isDefaultPurchase: Bool,
        salePriceExclVat: Nullable<String>,
        purchasePriceExclVat: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.unitCode = unitCode
        self.factor = factor
        self.isDefaultSale = isDefaultSale
        self.isDefaultPurchase = isDefaultPurchase
        self.salePriceExclVat = salePriceExclVat
        self.purchasePriceExclVat = purchasePriceExclVat
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.unitCode = try container.decode(String.self, forKey: .unitCode)
        self.factor = try container.decode(String.self, forKey: .factor)
        self.isDefaultSale = try container.decode(Bool.self, forKey: .isDefaultSale)
        self.isDefaultPurchase = try container.decode(Bool.self, forKey: .isDefaultPurchase)
        self.salePriceExclVat = try container.decode(Nullable<String>.self, forKey: .salePriceExclVat)
        self.purchasePriceExclVat = try container.decode(Nullable<String>.self, forKey: .purchasePriceExclVat)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.unitCode, forKey: .unitCode)
        try container.encode(self.factor, forKey: .factor)
        try container.encode(self.isDefaultSale, forKey: .isDefaultSale)
        try container.encode(self.isDefaultPurchase, forKey: .isDefaultPurchase)
        try container.encode(self.salePriceExclVat, forKey: .salePriceExclVat)
        try container.encode(self.purchasePriceExclVat, forKey: .purchasePriceExclVat)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case unitCode
        case factor
        case isDefaultSale
        case isDefaultPurchase
        case salePriceExclVat
        case purchasePriceExclVat
    }
}