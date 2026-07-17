import Foundation

public struct PostV1PartnersInquiriesGetResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: Nullable<String>
    public let partnerName: Nullable<String>
    public let contactName: Nullable<String>
    public let contactEmail: Nullable<String>
    public let contactPhone: Nullable<String>
    public let subject: String
    public let body: Nullable<String>
    public let channel: String
    public let status: PostV1PartnersInquiriesGetResponseStatus
    public let assignedUserId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    public let closedAt: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: Nullable<String>,
        partnerName: Nullable<String>,
        contactName: Nullable<String>,
        contactEmail: Nullable<String>,
        contactPhone: Nullable<String>,
        subject: String,
        body: Nullable<String>,
        channel: String,
        status: PostV1PartnersInquiriesGetResponseStatus,
        assignedUserId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        closedAt: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.contactName = contactName
        self.contactEmail = contactEmail
        self.contactPhone = contactPhone
        self.subject = subject
        self.body = body
        self.channel = channel
        self.status = status
        self.assignedUserId = assignedUserId
        self.notes = notes
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.closedAt = closedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.partnerName = try container.decode(Nullable<String>.self, forKey: .partnerName)
        self.contactName = try container.decode(Nullable<String>.self, forKey: .contactName)
        self.contactEmail = try container.decode(Nullable<String>.self, forKey: .contactEmail)
        self.contactPhone = try container.decode(Nullable<String>.self, forKey: .contactPhone)
        self.subject = try container.decode(String.self, forKey: .subject)
        self.body = try container.decode(Nullable<String>.self, forKey: .body)
        self.channel = try container.decode(String.self, forKey: .channel)
        self.status = try container.decode(PostV1PartnersInquiriesGetResponseStatus.self, forKey: .status)
        self.assignedUserId = try container.decode(Nullable<String>.self, forKey: .assignedUserId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.closedAt = try container.decode(Nullable<String>.self, forKey: .closedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.contactName, forKey: .contactName)
        try container.encode(self.contactEmail, forKey: .contactEmail)
        try container.encode(self.contactPhone, forKey: .contactPhone)
        try container.encode(self.subject, forKey: .subject)
        try container.encode(self.body, forKey: .body)
        try container.encode(self.channel, forKey: .channel)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.assignedUserId, forKey: .assignedUserId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.closedAt, forKey: .closedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case partnerName
        case contactName
        case contactEmail
        case contactPhone
        case subject
        case body
        case channel
        case status
        case assignedUserId
        case notes
        case createdAt
        case updatedAt
        case closedAt
    }
}