import Foundation

public struct PerDiemRatesCreateHrResponse: Codable, Hashable, Sendable {
    public let id: String
    public let countryCode: String
    public let dailyAmount: String
    public let validFrom: String
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        countryCode: String,
        dailyAmount: String,
        validFrom: String,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.countryCode = countryCode
        self.dailyAmount = dailyAmount
        self.validFrom = validFrom
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.dailyAmount = try container.decode(String.self, forKey: .dailyAmount)
        self.validFrom = try container.decode(String.self, forKey: .validFrom)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.dailyAmount, forKey: .dailyAmount)
        try container.encode(self.validFrom, forKey: .validFrom)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case countryCode
        case dailyAmount
        case validFrom
        case createdAt
    }
}