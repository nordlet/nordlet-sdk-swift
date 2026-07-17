import Foundation

public struct PostV1ReportsFinancialStatementsResponseBalanceSheetDetailNonCurrentAssets: Codable, Hashable, Sendable {
    public let intangible: String
    public let tangible: String
    public let financial: String
    public let other: String
    public let total: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        intangible: String,
        tangible: String,
        financial: String,
        other: String,
        total: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.intangible = intangible
        self.tangible = tangible
        self.financial = financial
        self.other = other
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.intangible = try container.decode(String.self, forKey: .intangible)
        self.tangible = try container.decode(String.self, forKey: .tangible)
        self.financial = try container.decode(String.self, forKey: .financial)
        self.other = try container.decode(String.self, forKey: .other)
        self.total = try container.decode(String.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.intangible, forKey: .intangible)
        try container.encode(self.tangible, forKey: .tangible)
        try container.encode(self.financial, forKey: .financial)
        try container.encode(self.other, forKey: .other)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case intangible
        case tangible
        case financial
        case other
        case total
    }
}