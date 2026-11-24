import Foundation

public struct ItTfrAccrualPostDeclarationsResponseRowsItemLeftOutItem: Codable, Hashable, Sendable {
    public let paymentType: String
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        paymentType: String,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.paymentType = paymentType
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.paymentType = try container.decode(String.self, forKey: .paymentType)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.paymentType, forKey: .paymentType)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case paymentType
        case amount
    }
}