import Foundation

public struct PostV1ConsolidationReportResponseStatementsBalanceSheetDetailLiabilities: Codable, Hashable, Sendable {
    public let nonCurrent: String
    public let current: String
    public let other: String
    public let total: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        nonCurrent: String,
        current: String,
        other: String,
        total: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.nonCurrent = nonCurrent
        self.current = current
        self.other = other
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nonCurrent = try container.decode(String.self, forKey: .nonCurrent)
        self.current = try container.decode(String.self, forKey: .current)
        self.other = try container.decode(String.self, forKey: .other)
        self.total = try container.decode(String.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.nonCurrent, forKey: .nonCurrent)
        try container.encode(self.current, forKey: .current)
        try container.encode(self.other, forKey: .other)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case nonCurrent
        case current
        case other
        case total
    }
}