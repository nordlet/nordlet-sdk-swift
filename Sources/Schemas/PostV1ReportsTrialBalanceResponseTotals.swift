import Foundation

public struct PostV1ReportsTrialBalanceResponseTotals: Codable, Hashable, Sendable {
    public let debit: String
    public let credit: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        debit: String,
        credit: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.debit = debit
        self.credit = credit
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.debit = try container.decode(String.self, forKey: .debit)
        self.credit = try container.decode(String.self, forKey: .credit)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.debit, forKey: .debit)
        try container.encode(self.credit, forKey: .credit)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case debit
        case credit
    }
}