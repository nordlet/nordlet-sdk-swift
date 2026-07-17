import Foundation

public struct PostV1PartnersContactsDeleteResponse: Codable, Hashable, Sendable {
    public let deleted: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deleted: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deleted = deleted
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deleted = try container.decode(Bool.self, forKey: .deleted)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deleted, forKey: .deleted)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deleted
    }
}