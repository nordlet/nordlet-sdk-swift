import Foundation

public struct VatClassifiersListReferenceResponseRowsItemRateFromLine: Codable, Hashable, Sendable {
    public let sale: Bool
    public let purchase: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sale: Bool,
        purchase: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sale = sale
        self.purchase = purchase
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sale = try container.decode(Bool.self, forKey: .sale)
        self.purchase = try container.decode(Bool.self, forKey: .purchase)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sale, forKey: .sale)
        try container.encode(self.purchase, forKey: .purchase)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sale
        case purchase
    }
}