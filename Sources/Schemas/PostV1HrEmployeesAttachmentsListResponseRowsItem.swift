import Foundation

public struct PostV1HrEmployeesAttachmentsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let fileName: String
    public let mimeType: String
    public let sizeBytes: Int64
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        fileName: String,
        mimeType: String,
        sizeBytes: Int64,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.fileName = fileName
        self.mimeType = mimeType
        self.sizeBytes = sizeBytes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.mimeType = try container.decode(String.self, forKey: .mimeType)
        self.sizeBytes = try container.decode(Int64.self, forKey: .sizeBytes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.mimeType, forKey: .mimeType)
        try container.encode(self.sizeBytes, forKey: .sizeBytes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case fileName
        case mimeType
        case sizeBytes
        case createdAt
    }
}