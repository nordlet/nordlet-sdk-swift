import Foundation

public struct PostV1DeclarationsDeReturnFactsSetRequestFactsRepresentative: Codable, Hashable, Sendable {
    public let role: PostV1DeclarationsDeReturnFactsSetRequestFactsRepresentativeRole
    public let name: String
    public let street: String
    public let houseNumber: String?
    public let postalCode: String
    public let city: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        role: PostV1DeclarationsDeReturnFactsSetRequestFactsRepresentativeRole,
        name: String,
        street: String,
        houseNumber: String? = nil,
        postalCode: String,
        city: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.role = role
        self.name = name
        self.street = street
        self.houseNumber = houseNumber
        self.postalCode = postalCode
        self.city = city
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.role = try container.decode(PostV1DeclarationsDeReturnFactsSetRequestFactsRepresentativeRole.self, forKey: .role)
        self.name = try container.decode(String.self, forKey: .name)
        self.street = try container.decode(String.self, forKey: .street)
        self.houseNumber = try container.decodeIfPresent(String.self, forKey: .houseNumber)
        self.postalCode = try container.decode(String.self, forKey: .postalCode)
        self.city = try container.decode(String.self, forKey: .city)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.street, forKey: .street)
        try container.encodeIfPresent(self.houseNumber, forKey: .houseNumber)
        try container.encode(self.postalCode, forKey: .postalCode)
        try container.encode(self.city, forKey: .city)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case role
        case name
        case street
        case houseNumber
        case postalCode
        case city
    }
}