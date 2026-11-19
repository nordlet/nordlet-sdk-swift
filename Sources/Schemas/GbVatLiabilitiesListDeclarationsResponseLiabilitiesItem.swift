import Foundation

public struct GbVatLiabilitiesListDeclarationsResponseLiabilitiesItem: Codable, Hashable, Sendable {
    public let taxPeriod: GbVatLiabilitiesListDeclarationsResponseLiabilitiesItemTaxPeriod?
    public let type: String
    public let originalAmount: Double
    public let outstandingAmount: Double?
    public let due: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taxPeriod: GbVatLiabilitiesListDeclarationsResponseLiabilitiesItemTaxPeriod? = nil,
        type: String,
        originalAmount: Double,
        outstandingAmount: Double? = nil,
        due: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taxPeriod = taxPeriod
        self.type = type
        self.originalAmount = originalAmount
        self.outstandingAmount = outstandingAmount
        self.due = due
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taxPeriod = try container.decodeIfPresent(GbVatLiabilitiesListDeclarationsResponseLiabilitiesItemTaxPeriod.self, forKey: .taxPeriod)
        self.type = try container.decode(String.self, forKey: .type)
        self.originalAmount = try container.decode(Double.self, forKey: .originalAmount)
        self.outstandingAmount = try container.decodeIfPresent(Double.self, forKey: .outstandingAmount)
        self.due = try container.decodeIfPresent(String.self, forKey: .due)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.taxPeriod, forKey: .taxPeriod)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.originalAmount, forKey: .originalAmount)
        try container.encodeIfPresent(self.outstandingAmount, forKey: .outstandingAmount)
        try container.encodeIfPresent(self.due, forKey: .due)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taxPeriod
        case type
        case originalAmount
        case outstandingAmount
        case due
    }
}