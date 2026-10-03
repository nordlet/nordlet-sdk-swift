import Foundation

public struct PostV1DeclarationsLtFr0564ComputeResponseRowsItem: Codable, Hashable, Sendable {
    public let vatCode: String
    public let partnerName: String
    public let countryCode: String
    public let goods: String
    public let triangular: String
    public let services: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        vatCode: String,
        partnerName: String,
        countryCode: String,
        goods: String,
        triangular: String,
        services: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.vatCode = vatCode
        self.partnerName = partnerName
        self.countryCode = countryCode
        self.goods = goods
        self.triangular = triangular
        self.services = services
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.vatCode = try container.decode(String.self, forKey: .vatCode)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.goods = try container.decode(String.self, forKey: .goods)
        self.triangular = try container.decode(String.self, forKey: .triangular)
        self.services = try container.decode(String.self, forKey: .services)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.goods, forKey: .goods)
        try container.encode(self.triangular, forKey: .triangular)
        try container.encode(self.services, forKey: .services)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case vatCode
        case partnerName
        case countryCode
        case goods
        case triangular
        case services
    }
}