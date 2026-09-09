import Foundation

public struct PostV1LeadsGetResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let contactName: Nullable<String>
    public let email: Nullable<String>
    public let phone: Nullable<String>
    public let website: Nullable<String>
    public let countryCode: Nullable<String>
    public let sourceId: Nullable<String>
    public let sourceName: Nullable<String>
    public let status: PostV1LeadsGetResponseStatus
    public let estimatedValue: Nullable<String>
    public let currency: String
    public let description: Nullable<String>
    public let assignedUserId: Nullable<String>
    public let partnerId: Nullable<String>
    public let convertedAt: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        contactName: Nullable<String>,
        email: Nullable<String>,
        phone: Nullable<String>,
        website: Nullable<String>,
        countryCode: Nullable<String>,
        sourceId: Nullable<String>,
        sourceName: Nullable<String>,
        status: PostV1LeadsGetResponseStatus,
        estimatedValue: Nullable<String>,
        currency: String,
        description: Nullable<String>,
        assignedUserId: Nullable<String>,
        partnerId: Nullable<String>,
        convertedAt: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.contactName = contactName
        self.email = email
        self.phone = phone
        self.website = website
        self.countryCode = countryCode
        self.sourceId = sourceId
        self.sourceName = sourceName
        self.status = status
        self.estimatedValue = estimatedValue
        self.currency = currency
        self.description = description
        self.assignedUserId = assignedUserId
        self.partnerId = partnerId
        self.convertedAt = convertedAt
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.contactName = try container.decode(Nullable<String>.self, forKey: .contactName)
        self.email = try container.decode(Nullable<String>.self, forKey: .email)
        self.phone = try container.decode(Nullable<String>.self, forKey: .phone)
        self.website = try container.decode(Nullable<String>.self, forKey: .website)
        self.countryCode = try container.decode(Nullable<String>.self, forKey: .countryCode)
        self.sourceId = try container.decode(Nullable<String>.self, forKey: .sourceId)
        self.sourceName = try container.decode(Nullable<String>.self, forKey: .sourceName)
        self.status = try container.decode(PostV1LeadsGetResponseStatus.self, forKey: .status)
        self.estimatedValue = try container.decode(Nullable<String>.self, forKey: .estimatedValue)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.assignedUserId = try container.decode(Nullable<String>.self, forKey: .assignedUserId)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.convertedAt = try container.decode(Nullable<String>.self, forKey: .convertedAt)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.contactName, forKey: .contactName)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.phone, forKey: .phone)
        try container.encode(self.website, forKey: .website)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.sourceId, forKey: .sourceId)
        try container.encode(self.sourceName, forKey: .sourceName)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.estimatedValue, forKey: .estimatedValue)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.assignedUserId, forKey: .assignedUserId)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.convertedAt, forKey: .convertedAt)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case contactName
        case email
        case phone
        case website
        case countryCode
        case sourceId
        case sourceName
        case status
        case estimatedValue
        case currency
        case description
        case assignedUserId
        case partnerId
        case convertedAt
        case createdAt
        case updatedAt
    }
}