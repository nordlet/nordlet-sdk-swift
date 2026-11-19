import Foundation

public struct Us940GetDeclarationsResponsePart5: Codable, Hashable, Sendable {
    public let line16: [String]
    public let line17: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        line16: [String],
        line17: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.line16 = line16
        self.line17 = line17
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.line16 = try container.decode([String].self, forKey: .line16)
        self.line17 = try container.decode(String.self, forKey: .line17)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.line16, forKey: .line16)
        try container.encode(self.line17, forKey: .line17)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case line16
        case line17
    }
}