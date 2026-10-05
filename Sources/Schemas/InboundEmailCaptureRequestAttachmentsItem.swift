import Foundation

public struct InboundEmailCaptureRequestAttachmentsItem: Codable, Hashable, Sendable {
    public let postmarkName: String?
    public let postmarkContent: String?
    public let postmarkContentType: String?
    public let fileName: String?
    public let mimeType: String?
    public let content: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        postmarkName: String? = nil,
        postmarkContent: String? = nil,
        postmarkContentType: String? = nil,
        fileName: String? = nil,
        mimeType: String? = nil,
        content: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.postmarkName = postmarkName
        self.postmarkContent = postmarkContent
        self.postmarkContentType = postmarkContentType
        self.fileName = fileName
        self.mimeType = mimeType
        self.content = content
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.postmarkName = try container.decodeIfPresent(String.self, forKey: .postmarkName)
        self.postmarkContent = try container.decodeIfPresent(String.self, forKey: .postmarkContent)
        self.postmarkContentType = try container.decodeIfPresent(String.self, forKey: .postmarkContentType)
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName)
        self.mimeType = try container.decodeIfPresent(String.self, forKey: .mimeType)
        self.content = try container.decodeIfPresent(String.self, forKey: .content)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.postmarkName, forKey: .postmarkName)
        try container.encodeIfPresent(self.postmarkContent, forKey: .postmarkContent)
        try container.encodeIfPresent(self.postmarkContentType, forKey: .postmarkContentType)
        try container.encodeIfPresent(self.fileName, forKey: .fileName)
        try container.encodeIfPresent(self.mimeType, forKey: .mimeType)
        try container.encodeIfPresent(self.content, forKey: .content)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case postmarkName = "Name"
        case postmarkContent = "Content"
        case postmarkContentType = "ContentType"
        case fileName
        case mimeType
        case content
    }
}