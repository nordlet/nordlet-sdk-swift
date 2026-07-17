import Foundation

public struct PostV1PartnersCreditCheckResponse: Codable, Hashable, Sendable {
    public let partnerId: String
    public let partnerName: String
    public let creditLimit: Nullable<String>
    public let openReceivables: String
    public let additionalAmount: String
    public let totalExposure: String
    public let available: Nullable<String>
    public let exceeded: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        partnerId: String,
        partnerName: String,
        creditLimit: Nullable<String>,
        openReceivables: String,
        additionalAmount: String,
        totalExposure: String,
        available: Nullable<String>,
        exceeded: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.creditLimit = creditLimit
        self.openReceivables = openReceivables
        self.additionalAmount = additionalAmount
        self.totalExposure = totalExposure
        self.available = available
        self.exceeded = exceeded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.creditLimit = try container.decode(Nullable<String>.self, forKey: .creditLimit)
        self.openReceivables = try container.decode(String.self, forKey: .openReceivables)
        self.additionalAmount = try container.decode(String.self, forKey: .additionalAmount)
        self.totalExposure = try container.decode(String.self, forKey: .totalExposure)
        self.available = try container.decode(Nullable<String>.self, forKey: .available)
        self.exceeded = try container.decode(Bool.self, forKey: .exceeded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.creditLimit, forKey: .creditLimit)
        try container.encode(self.openReceivables, forKey: .openReceivables)
        try container.encode(self.additionalAmount, forKey: .additionalAmount)
        try container.encode(self.totalExposure, forKey: .totalExposure)
        try container.encode(self.available, forKey: .available)
        try container.encode(self.exceeded, forKey: .exceeded)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case partnerId
        case partnerName
        case creditLimit
        case openReceivables
        case additionalAmount
        case totalExposure
        case available
        case exceeded
    }
}