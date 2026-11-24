import Foundation

public struct EeTsdAnnexesSetDeclarationsResponseInputAnnex6RelatedPartiesItem: Codable, Hashable, Sendable {
    /// 6200: registry code of the related person
    public let registryCode: String
    /// 6210
    public let name: String
    /// 6220: ISO 3166-1 alpha-2 country
    public let country: String
    /// 6230: taxable amount
    public let amount: String
    /// 6240: 621 transfer price, 6211 transfer price with a party under TuMS § 52¹, 622 income not received or cost not incurred, 623 hybrid mismatch (TuMS §§ 54⁷, 54⁸), 624 market value on a transfer to a tonnage unit
    public let typeCode: EeTsdAnnexesSetDeclarationsResponseInputAnnex6RelatedPartiesItemTypeCode
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        registryCode: String,
        name: String,
        country: String,
        amount: String,
        typeCode: EeTsdAnnexesSetDeclarationsResponseInputAnnex6RelatedPartiesItemTypeCode,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.registryCode = registryCode
        self.name = name
        self.country = country
        self.amount = amount
        self.typeCode = typeCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.registryCode = try container.decode(String.self, forKey: .registryCode)
        self.name = try container.decode(String.self, forKey: .name)
        self.country = try container.decode(String.self, forKey: .country)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.typeCode = try container.decode(EeTsdAnnexesSetDeclarationsResponseInputAnnex6RelatedPartiesItemTypeCode.self, forKey: .typeCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.registryCode, forKey: .registryCode)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.typeCode, forKey: .typeCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case registryCode
        case name
        case country
        case amount
        case typeCode
    }
}