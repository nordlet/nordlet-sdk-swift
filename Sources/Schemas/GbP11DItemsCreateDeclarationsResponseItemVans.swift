import Foundation

public struct GbP11DItemsCreateDeclarationsResponseItemVans: Codable, Hashable, Sendable {
    public let amount: String
    public let fuelAmount: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        amount: String,
        fuelAmount: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.amount = amount
        self.fuelAmount = fuelAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.fuelAmount = try container.decodeIfPresent(String.self, forKey: .fuelAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.fuelAmount, forKey: .fuelAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case fuelAmount
    }
}