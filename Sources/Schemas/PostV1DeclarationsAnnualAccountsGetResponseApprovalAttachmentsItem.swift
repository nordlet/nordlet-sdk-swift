import Foundation

public struct PostV1DeclarationsAnnualAccountsGetResponseApprovalAttachmentsItem: Codable, Hashable, Sendable {
    public let id: String
    public let kind: PostV1DeclarationsAnnualAccountsGetResponseApprovalAttachmentsItemKind
    public let name: String
    public let fileId: String
    public let fileName: String
    public let mimeType: String
    public let sizeBytes: Int64
    public let storageKey: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        kind: PostV1DeclarationsAnnualAccountsGetResponseApprovalAttachmentsItemKind,
        name: String,
        fileId: String,
        fileName: String,
        mimeType: String,
        sizeBytes: Int64,
        storageKey: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.kind = kind
        self.name = name
        self.fileId = fileId
        self.fileName = fileName
        self.mimeType = mimeType
        self.sizeBytes = sizeBytes
        self.storageKey = storageKey
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.kind = try container.decode(PostV1DeclarationsAnnualAccountsGetResponseApprovalAttachmentsItemKind.self, forKey: .kind)
        self.name = try container.decode(String.self, forKey: .name)
        self.fileId = try container.decode(String.self, forKey: .fileId)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.mimeType = try container.decode(String.self, forKey: .mimeType)
        self.sizeBytes = try container.decode(Int64.self, forKey: .sizeBytes)
        self.storageKey = try container.decode(String.self, forKey: .storageKey)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.mimeType, forKey: .mimeType)
        try container.encode(self.sizeBytes, forKey: .sizeBytes)
        try container.encode(self.storageKey, forKey: .storageKey)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case kind
        case name
        case fileId
        case fileName
        case mimeType
        case sizeBytes
        case storageKey
    }
}