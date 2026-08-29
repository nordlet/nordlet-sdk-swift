import Foundation

public struct PostV1CaptureDocumentsGetResponse: Codable, Hashable, Sendable {
    public let id: String
    public let fileId: String
    public let fileName: String
    public let mimeType: String
    public let sizeBytes: Int64
    public let status: PostV1CaptureDocumentsGetResponseStatus
    public let provider: Nullable<String>
    public let model: Nullable<String>
    public let pagesProcessed: Nullable<Int64>
    public let extraction: Nullable<PostV1CaptureDocumentsGetResponseExtraction>
    public let matchedPartnerId: Nullable<String>
    public let purchaseInvoiceId: Nullable<String>
    public let error: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    public let rawText: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        fileId: String,
        fileName: String,
        mimeType: String,
        sizeBytes: Int64,
        status: PostV1CaptureDocumentsGetResponseStatus,
        provider: Nullable<String>,
        model: Nullable<String>,
        pagesProcessed: Nullable<Int64>,
        extraction: Nullable<PostV1CaptureDocumentsGetResponseExtraction>,
        matchedPartnerId: Nullable<String>,
        purchaseInvoiceId: Nullable<String>,
        error: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        rawText: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.fileId = fileId
        self.fileName = fileName
        self.mimeType = mimeType
        self.sizeBytes = sizeBytes
        self.status = status
        self.provider = provider
        self.model = model
        self.pagesProcessed = pagesProcessed
        self.extraction = extraction
        self.matchedPartnerId = matchedPartnerId
        self.purchaseInvoiceId = purchaseInvoiceId
        self.error = error
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.rawText = rawText
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.fileId = try container.decode(String.self, forKey: .fileId)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.mimeType = try container.decode(String.self, forKey: .mimeType)
        self.sizeBytes = try container.decode(Int64.self, forKey: .sizeBytes)
        self.status = try container.decode(PostV1CaptureDocumentsGetResponseStatus.self, forKey: .status)
        self.provider = try container.decode(Nullable<String>.self, forKey: .provider)
        self.model = try container.decode(Nullable<String>.self, forKey: .model)
        self.pagesProcessed = try container.decode(Nullable<Int64>.self, forKey: .pagesProcessed)
        self.extraction = try container.decode(Nullable<PostV1CaptureDocumentsGetResponseExtraction>.self, forKey: .extraction)
        self.matchedPartnerId = try container.decode(Nullable<String>.self, forKey: .matchedPartnerId)
        self.purchaseInvoiceId = try container.decode(Nullable<String>.self, forKey: .purchaseInvoiceId)
        self.error = try container.decode(Nullable<String>.self, forKey: .error)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.rawText = try container.decode(Nullable<String>.self, forKey: .rawText)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.mimeType, forKey: .mimeType)
        try container.encode(self.sizeBytes, forKey: .sizeBytes)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.provider, forKey: .provider)
        try container.encode(self.model, forKey: .model)
        try container.encode(self.pagesProcessed, forKey: .pagesProcessed)
        try container.encode(self.extraction, forKey: .extraction)
        try container.encode(self.matchedPartnerId, forKey: .matchedPartnerId)
        try container.encode(self.purchaseInvoiceId, forKey: .purchaseInvoiceId)
        try container.encode(self.error, forKey: .error)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.rawText, forKey: .rawText)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case fileId
        case fileName
        case mimeType
        case sizeBytes
        case status
        case provider
        case model
        case pagesProcessed
        case extraction
        case matchedPartnerId
        case purchaseInvoiceId
        case error
        case createdAt
        case updatedAt
        case rawText
    }
}