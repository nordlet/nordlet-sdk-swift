import Foundation

public struct PostV1DeclarationsDeReturnFactsGetResponseFactsParticipationsItem: Codable, Hashable, Sendable {
    public let name: String
    public let countryCode: String
    public let sharePercent: String
    public let dividends: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        countryCode: String,
        sharePercent: String,
        dividends: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.countryCode = countryCode
        self.sharePercent = sharePercent
        self.dividends = dividends
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.sharePercent = try container.decode(String.self, forKey: .sharePercent)
        self.dividends = try container.decode(String.self, forKey: .dividends)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.sharePercent, forKey: .sharePercent)
        try container.encode(self.dividends, forKey: .dividends)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case countryCode
        case sharePercent
        case dividends
    }
}