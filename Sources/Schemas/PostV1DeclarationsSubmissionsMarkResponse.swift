import Foundation

public struct PostV1DeclarationsSubmissionsMarkResponse: Codable, Hashable, Sendable {
    public let id: String
    public let obligation: String
    public let periodYear: Int64
    public let periodMonth: Nullable<Int64>
    public let variant: Nullable<String>
    public let status: PostV1DeclarationsSubmissionsMarkResponseStatus
    public let fileName: String
    public let fileId: Nullable<String>
    public let externalRef: Nullable<String>
    public let message: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        obligation: String,
        periodYear: Int64,
        periodMonth: Nullable<Int64>,
        variant: Nullable<String>,
        status: PostV1DeclarationsSubmissionsMarkResponseStatus,
        fileName: String,
        fileId: Nullable<String>,
        externalRef: Nullable<String>,
        message: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.obligation = obligation
        self.periodYear = periodYear
        self.periodMonth = periodMonth
        self.variant = variant
        self.status = status
        self.fileName = fileName
        self.fileId = fileId
        self.externalRef = externalRef
        self.message = message
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.obligation = try container.decode(String.self, forKey: .obligation)
        self.periodYear = try container.decode(Int64.self, forKey: .periodYear)
        self.periodMonth = try container.decode(Nullable<Int64>.self, forKey: .periodMonth)
        self.variant = try container.decode(Nullable<String>.self, forKey: .variant)
        self.status = try container.decode(PostV1DeclarationsSubmissionsMarkResponseStatus.self, forKey: .status)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.fileId = try container.decode(Nullable<String>.self, forKey: .fileId)
        self.externalRef = try container.decode(Nullable<String>.self, forKey: .externalRef)
        self.message = try container.decode(Nullable<String>.self, forKey: .message)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.obligation, forKey: .obligation)
        try container.encode(self.periodYear, forKey: .periodYear)
        try container.encode(self.periodMonth, forKey: .periodMonth)
        try container.encode(self.variant, forKey: .variant)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.externalRef, forKey: .externalRef)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case obligation
        case periodYear
        case periodMonth
        case variant
        case status
        case fileName
        case fileId
        case externalRef
        case message
        case createdAt
        case updatedAt
    }
}