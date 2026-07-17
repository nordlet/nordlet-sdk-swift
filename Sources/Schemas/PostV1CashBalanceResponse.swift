import Foundation

public struct PostV1CashBalanceResponse: Codable, Hashable, Sendable {
    public let cashAccountCode: String
    public let balance: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cashAccountCode: String,
        balance: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cashAccountCode = cashAccountCode
        self.balance = balance
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cashAccountCode = try container.decode(String.self, forKey: .cashAccountCode)
        self.balance = try container.decode(String.self, forKey: .balance)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cashAccountCode, forKey: .cashAccountCode)
        try container.encode(self.balance, forKey: .balance)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cashAccountCode
        case balance
    }
}