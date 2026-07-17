import Foundation

public struct PostV1DeclarationsLtIvazGenerateResponseCounts: Codable, Hashable, Sendable {
    public let documents: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        documents: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.documents = documents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.documents = try container.decode(Int64.self, forKey: .documents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.documents, forKey: .documents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case documents
    }
}