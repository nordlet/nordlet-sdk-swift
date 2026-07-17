import Foundation

public struct PostV1ConsolidationReportResponseTrialBalanceItem: Codable, Hashable, Sendable {
    public let code: String
    public let type: String
    public let closing: String
    public let period: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        type: String,
        closing: String,
        period: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.type = type
        self.closing = closing
        self.period = period
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.type = try container.decode(String.self, forKey: .type)
        self.closing = try container.decode(String.self, forKey: .closing)
        self.period = try container.decode(String.self, forKey: .period)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.closing, forKey: .closing)
        try container.encode(self.period, forKey: .period)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case type
        case closing
        case period
    }
}