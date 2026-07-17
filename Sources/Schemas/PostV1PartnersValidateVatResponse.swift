import Foundation

public struct PostV1PartnersValidateVatResponse: Codable, Hashable, Sendable {
    public let valid: Bool
    public let countryCode: String
    public let vatNumber: String
    public let name: Nullable<String>
    public let address: Nullable<String>
    public let requestIdentifier: Nullable<String>
    public let checkedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        valid: Bool,
        countryCode: String,
        vatNumber: String,
        name: Nullable<String>,
        address: Nullable<String>,
        requestIdentifier: Nullable<String>,
        checkedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.valid = valid
        self.countryCode = countryCode
        self.vatNumber = vatNumber
        self.name = name
        self.address = address
        self.requestIdentifier = requestIdentifier
        self.checkedAt = checkedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.valid = try container.decode(Bool.self, forKey: .valid)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.vatNumber = try container.decode(String.self, forKey: .vatNumber)
        self.name = try container.decode(Nullable<String>.self, forKey: .name)
        self.address = try container.decode(Nullable<String>.self, forKey: .address)
        self.requestIdentifier = try container.decode(Nullable<String>.self, forKey: .requestIdentifier)
        self.checkedAt = try container.decode(String.self, forKey: .checkedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.valid, forKey: .valid)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.vatNumber, forKey: .vatNumber)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.requestIdentifier, forKey: .requestIdentifier)
        try container.encode(self.checkedAt, forKey: .checkedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case valid
        case countryCode
        case vatNumber
        case name
        case address
        case requestIdentifier
        case checkedAt
    }
}