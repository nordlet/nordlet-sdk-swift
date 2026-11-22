import Foundation

public struct UsIncomeTaxReturnGetDeclarationsResponseScheduleLItem: Codable, Hashable, Sendable {
    public let line: String
    public let label: String
    public let beginning: String
    public let end: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        line: String,
        label: String,
        beginning: String,
        end: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.line = line
        self.label = label
        self.beginning = beginning
        self.end = end
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.line = try container.decode(String.self, forKey: .line)
        self.label = try container.decode(String.self, forKey: .label)
        self.beginning = try container.decode(String.self, forKey: .beginning)
        self.end = try container.decode(String.self, forKey: .end)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.line, forKey: .line)
        try container.encode(self.label, forKey: .label)
        try container.encode(self.beginning, forKey: .beginning)
        try container.encode(self.end, forKey: .end)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case line
        case label
        case beginning
        case end
    }
}