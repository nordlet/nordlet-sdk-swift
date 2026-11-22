import Foundation

public struct UsFlsaRecordsListDeclarationsResponseEmployeesItemAddress: Codable, Hashable, Sendable {
    public let street: Nullable<String>
    public let city: Nullable<String>
    public let subdivision: Nullable<String>
    public let postalCode: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        street: Nullable<String>,
        city: Nullable<String>,
        subdivision: Nullable<String>,
        postalCode: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.street = street
        self.city = city
        self.subdivision = subdivision
        self.postalCode = postalCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.street = try container.decode(Nullable<String>.self, forKey: .street)
        self.city = try container.decode(Nullable<String>.self, forKey: .city)
        self.subdivision = try container.decode(Nullable<String>.self, forKey: .subdivision)
        self.postalCode = try container.decode(Nullable<String>.self, forKey: .postalCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.street, forKey: .street)
        try container.encode(self.city, forKey: .city)
        try container.encode(self.subdivision, forKey: .subdivision)
        try container.encode(self.postalCode, forKey: .postalCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case street
        case city
        case subdivision
        case postalCode
    }
}