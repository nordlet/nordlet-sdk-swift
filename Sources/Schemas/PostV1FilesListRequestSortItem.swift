import Foundation

public struct PostV1FilesListRequestSortItem: Codable, Hashable, Sendable {
    public let field: String
    public let dir: PostV1FilesListRequestSortItemDir?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: String,
        dir: PostV1FilesListRequestSortItemDir? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.dir = dir
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(String.self, forKey: .field)
        self.dir = try container.decodeIfPresent(PostV1FilesListRequestSortItemDir.self, forKey: .dir)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.field, forKey: .field)
        try container.encodeIfPresent(self.dir, forKey: .dir)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case dir
    }
}