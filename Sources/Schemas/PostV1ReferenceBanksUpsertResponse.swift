import Foundation

public struct PostV1ReferenceBanksUpsertResponse: Codable, Hashable, Sendable {
    public let id: String
    public let countryCode: String
    public let name: String
    public let bic: String
    public let bankCode: Nullable<String>
    public let isActive: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        countryCode: String,
        name: String,
        bic: String,
        bankCode: Nullable<String>,
        isActive: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.countryCode = countryCode
        self.name = name
        self.bic = bic
        self.bankCode = bankCode
        self.isActive = isActive
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.name = try container.decode(String.self, forKey: .name)
        self.bic = try container.decode(String.self, forKey: .bic)
        self.bankCode = try container.decode(Nullable<String>.self, forKey: .bankCode)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.bic, forKey: .bic)
        try container.encode(self.bankCode, forKey: .bankCode)
        try container.encode(self.isActive, forKey: .isActive)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case countryCode
        case name
        case bic
        case bankCode
        case isActive
    }
}