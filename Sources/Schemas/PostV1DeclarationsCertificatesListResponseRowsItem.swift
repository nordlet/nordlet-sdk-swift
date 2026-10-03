import Foundation

public struct PostV1DeclarationsCertificatesListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let system: String
    public let fieldKey: String
    public let fileName: String
    public let format: PostV1DeclarationsCertificatesListResponseRowsItemFormat
    public let fingerprint: Nullable<String>
    public let subject: Nullable<String>
    public let issuer: Nullable<String>
    public let notBefore: Nullable<String>
    public let notAfter: Nullable<String>
    public let sha256: String
    public let health: PostV1DeclarationsCertificatesListResponseRowsItemHealth
    public let daysLeft: Nullable<Int64>
    public let uploadedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        system: String,
        fieldKey: String,
        fileName: String,
        format: PostV1DeclarationsCertificatesListResponseRowsItemFormat,
        fingerprint: Nullable<String>,
        subject: Nullable<String>,
        issuer: Nullable<String>,
        notBefore: Nullable<String>,
        notAfter: Nullable<String>,
        sha256: String,
        health: PostV1DeclarationsCertificatesListResponseRowsItemHealth,
        daysLeft: Nullable<Int64>,
        uploadedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.system = system
        self.fieldKey = fieldKey
        self.fileName = fileName
        self.format = format
        self.fingerprint = fingerprint
        self.subject = subject
        self.issuer = issuer
        self.notBefore = notBefore
        self.notAfter = notAfter
        self.sha256 = sha256
        self.health = health
        self.daysLeft = daysLeft
        self.uploadedAt = uploadedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.system = try container.decode(String.self, forKey: .system)
        self.fieldKey = try container.decode(String.self, forKey: .fieldKey)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.format = try container.decode(PostV1DeclarationsCertificatesListResponseRowsItemFormat.self, forKey: .format)
        self.fingerprint = try container.decode(Nullable<String>.self, forKey: .fingerprint)
        self.subject = try container.decode(Nullable<String>.self, forKey: .subject)
        self.issuer = try container.decode(Nullable<String>.self, forKey: .issuer)
        self.notBefore = try container.decode(Nullable<String>.self, forKey: .notBefore)
        self.notAfter = try container.decode(Nullable<String>.self, forKey: .notAfter)
        self.sha256 = try container.decode(String.self, forKey: .sha256)
        self.health = try container.decode(PostV1DeclarationsCertificatesListResponseRowsItemHealth.self, forKey: .health)
        self.daysLeft = try container.decode(Nullable<Int64>.self, forKey: .daysLeft)
        self.uploadedAt = try container.decode(String.self, forKey: .uploadedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.fieldKey, forKey: .fieldKey)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.format, forKey: .format)
        try container.encode(self.fingerprint, forKey: .fingerprint)
        try container.encode(self.subject, forKey: .subject)
        try container.encode(self.issuer, forKey: .issuer)
        try container.encode(self.notBefore, forKey: .notBefore)
        try container.encode(self.notAfter, forKey: .notAfter)
        try container.encode(self.sha256, forKey: .sha256)
        try container.encode(self.health, forKey: .health)
        try container.encode(self.daysLeft, forKey: .daysLeft)
        try container.encode(self.uploadedAt, forKey: .uploadedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case system
        case fieldKey
        case fileName
        case format
        case fingerprint
        case subject
        case issuer
        case notBefore
        case notAfter
        case sha256
        case health
        case daysLeft
        case uploadedAt
    }
}