import Foundation

public struct InvoicesProposeLinesPurchasesRequestLinesItem: Codable, Hashable, Sendable {
    public let itemId: String?
    public let vatRatePercent: String?
    public let vatAmount: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String? = nil,
        vatRatePercent: String? = nil,
        vatAmount: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.vatRatePercent = vatRatePercent
        self.vatAmount = vatAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
        self.vatRatePercent = try container.decodeIfPresent(String.self, forKey: .vatRatePercent)
        self.vatAmount = try container.decodeIfPresent(String.self, forKey: .vatAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.itemId, forKey: .itemId)
        try container.encodeIfPresent(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encodeIfPresent(self.vatAmount, forKey: .vatAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case vatRatePercent
        case vatAmount
    }
}