import Foundation

public struct InvoiceTemplatesGetSalesResponseLinesItem: Codable, Hashable, Sendable {
    public let itemId: String?
    public let description: String?
    public let quantity: String?
    public let unitPriceExclVat: String?
    public let vatRatePercent: String?
    public let vatExemptionBasis: String?
    public let projectId: String?
    public let unit: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String? = nil,
        description: String? = nil,
        quantity: String? = nil,
        unitPriceExclVat: String? = nil,
        vatRatePercent: String? = nil,
        vatExemptionBasis: String? = nil,
        projectId: String? = nil,
        unit: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.description = description
        self.quantity = quantity
        self.unitPriceExclVat = unitPriceExclVat
        self.vatRatePercent = vatRatePercent
        self.vatExemptionBasis = vatExemptionBasis
        self.projectId = projectId
        self.unit = unit
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.quantity = try container.decodeIfPresent(String.self, forKey: .quantity)
        self.unitPriceExclVat = try container.decodeIfPresent(String.self, forKey: .unitPriceExclVat)
        self.vatRatePercent = try container.decodeIfPresent(String.self, forKey: .vatRatePercent)
        self.vatExemptionBasis = try container.decodeIfPresent(String.self, forKey: .vatExemptionBasis)
        self.projectId = try container.decodeIfPresent(String.self, forKey: .projectId)
        self.unit = try container.decodeIfPresent(String.self, forKey: .unit)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.itemId, forKey: .itemId)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.unitPriceExclVat, forKey: .unitPriceExclVat)
        try container.encodeIfPresent(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encodeIfPresent(self.vatExemptionBasis, forKey: .vatExemptionBasis)
        try container.encodeIfPresent(self.projectId, forKey: .projectId)
        try container.encodeIfPresent(self.unit, forKey: .unit)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case description
        case quantity
        case unitPriceExclVat
        case vatRatePercent
        case vatExemptionBasis
        case projectId
        case unit
    }
}