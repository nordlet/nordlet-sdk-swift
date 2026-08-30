import Foundation

public struct PostV1MigrationBooksImportRequestItemsItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: String
    public let type: PostV1MigrationBooksImportRequestItemsItemType?
    public let unit: String?
    public let barcode: String?
    public let vatRatePercent: String?
    public let salePriceExclVat: String?
    public let purchasePriceExclVat: String?
    public let description: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: String,
        type: PostV1MigrationBooksImportRequestItemsItemType? = nil,
        unit: String? = nil,
        barcode: String? = nil,
        vatRatePercent: String? = nil,
        salePriceExclVat: String? = nil,
        purchasePriceExclVat: String? = nil,
        description: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.type = type
        self.unit = unit
        self.barcode = barcode
        self.vatRatePercent = vatRatePercent
        self.salePriceExclVat = salePriceExclVat
        self.purchasePriceExclVat = purchasePriceExclVat
        self.description = description
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.type = try container.decodeIfPresent(PostV1MigrationBooksImportRequestItemsItemType.self, forKey: .type)
        self.unit = try container.decodeIfPresent(String.self, forKey: .unit)
        self.barcode = try container.decodeIfPresent(String.self, forKey: .barcode)
        self.vatRatePercent = try container.decodeIfPresent(String.self, forKey: .vatRatePercent)
        self.salePriceExclVat = try container.decodeIfPresent(String.self, forKey: .salePriceExclVat)
        self.purchasePriceExclVat = try container.decodeIfPresent(String.self, forKey: .purchasePriceExclVat)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.unit, forKey: .unit)
        try container.encodeIfPresent(self.barcode, forKey: .barcode)
        try container.encodeIfPresent(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encodeIfPresent(self.salePriceExclVat, forKey: .salePriceExclVat)
        try container.encodeIfPresent(self.purchasePriceExclVat, forKey: .purchasePriceExclVat)
        try container.encodeIfPresent(self.description, forKey: .description)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case type
        case unit
        case barcode
        case vatRatePercent
        case salePriceExclVat
        case purchasePriceExclVat
        case description
    }
}