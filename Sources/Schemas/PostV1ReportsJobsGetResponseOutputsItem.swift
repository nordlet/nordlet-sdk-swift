import Foundation

public struct PostV1ReportsJobsGetResponseOutputsItem: Codable, Hashable, Sendable {
    public let format: String
    public let fileId: String
    public let fileName: String
    public let sizeBytes: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        format: String,
        fileId: String,
        fileName: String,
        sizeBytes: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.format = format
        self.fileId = fileId
        self.fileName = fileName
        self.sizeBytes = sizeBytes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.format = try container.decode(String.self, forKey: .format)
        self.fileId = try container.decode(String.self, forKey: .fileId)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.sizeBytes = try container.decode(Int64.self, forKey: .sizeBytes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.format, forKey: .format)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.sizeBytes, forKey: .sizeBytes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case format
        case fileId
        case fileName
        case sizeBytes
    }
}