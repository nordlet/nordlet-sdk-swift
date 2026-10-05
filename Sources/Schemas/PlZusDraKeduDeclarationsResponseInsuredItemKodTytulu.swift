import Foundation

public struct PlZusDraKeduDeclarationsResponseInsuredItemKodTytulu: Codable, Hashable, Sendable {
    public let p1: String
    public let p2: String
    public let p3: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        p1: String,
        p2: String,
        p3: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.p1 = p1
        self.p2 = p2
        self.p3 = p3
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.p1 = try container.decode(String.self, forKey: .p1)
        self.p2 = try container.decode(String.self, forKey: .p2)
        self.p3 = try container.decode(String.self, forKey: .p3)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.p1, forKey: .p1)
        try container.encode(self.p2, forKey: .p2)
        try container.encode(self.p3, forKey: .p3)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case p1
        case p2
        case p3
    }
}