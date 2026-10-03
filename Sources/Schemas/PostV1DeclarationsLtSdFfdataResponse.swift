import Foundation

public struct PostV1DeclarationsLtSdFfdataResponse: Codable, Hashable, Sendable {
    public let type: PostV1DeclarationsLtSdFfdataResponseType
    public let fileName: String
    public let xml: String
    public let rows: Int64
    public let pageCount: Int64
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        type: PostV1DeclarationsLtSdFfdataResponseType,
        fileName: String,
        xml: String,
        rows: Int64,
        pageCount: Int64,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.type = type
        self.fileName = fileName
        self.xml = xml
        self.rows = rows
        self.pageCount = pageCount
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(PostV1DeclarationsLtSdFfdataResponseType.self, forKey: .type)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.rows = try container.decode(Int64.self, forKey: .rows)
        self.pageCount = try container.decode(Int64.self, forKey: .pageCount)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.pageCount, forKey: .pageCount)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case fileName
        case xml
        case rows
        case pageCount
        case warnings
    }
}