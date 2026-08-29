import Foundation

public struct PostV1BankFeedsBanksListResponseBanksItem: Codable, Hashable, Sendable {
    public let name: String
    public let country: String
    public let logoUrl: Nullable<String>
    public let psuTypes: [PostV1BankFeedsBanksListResponseBanksItemPsuTypesItem]
    public let maxConsentDays: Nullable<Int64>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        country: String,
        logoUrl: Nullable<String>,
        psuTypes: [PostV1BankFeedsBanksListResponseBanksItemPsuTypesItem],
        maxConsentDays: Nullable<Int64>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.country = country
        self.logoUrl = logoUrl
        self.psuTypes = psuTypes
        self.maxConsentDays = maxConsentDays
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.country = try container.decode(String.self, forKey: .country)
        self.logoUrl = try container.decode(Nullable<String>.self, forKey: .logoUrl)
        self.psuTypes = try container.decode([PostV1BankFeedsBanksListResponseBanksItemPsuTypesItem].self, forKey: .psuTypes)
        self.maxConsentDays = try container.decode(Nullable<Int64>.self, forKey: .maxConsentDays)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.logoUrl, forKey: .logoUrl)
        try container.encode(self.psuTypes, forKey: .psuTypes)
        try container.encode(self.maxConsentDays, forKey: .maxConsentDays)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case country
        case logoUrl
        case psuTypes
        case maxConsentDays
    }
}