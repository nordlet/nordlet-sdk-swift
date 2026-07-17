import Foundation

public struct PostV1ReportsFinancialStatementsResponseEquityChangesItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: String
    public let opening: String
    public let increase: String
    public let decrease: String
    public let closing: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: String,
        opening: String,
        increase: String,
        decrease: String,
        closing: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.opening = opening
        self.increase = increase
        self.decrease = decrease
        self.closing = closing
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.opening = try container.decode(String.self, forKey: .opening)
        self.increase = try container.decode(String.self, forKey: .increase)
        self.decrease = try container.decode(String.self, forKey: .decrease)
        self.closing = try container.decode(String.self, forKey: .closing)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.opening, forKey: .opening)
        try container.encode(self.increase, forKey: .increase)
        try container.encode(self.decrease, forKey: .decrease)
        try container.encode(self.closing, forKey: .closing)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case opening
        case increase
        case decrease
        case closing
    }
}