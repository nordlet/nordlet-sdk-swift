import Foundation

public struct PlIntrastatGenerateDeclarationsResponseRowsItem: Codable, Hashable, Sendable {
    public let itemNumber: Int64
    public let cnCode: String
    public let description: Nullable<String>
    public let countryCode: String
    public let originCountry: Nullable<String>
    public let partnerVat: Nullable<String>
    public let transactionNature: String
    public let transportMode: Nullable<String>
    public let deliveryTerms: Nullable<String>
    public let netMassKg: Nullable<String>
    public let supplementaryUnit: Nullable<String>
    public let supplementaryQty: Nullable<String>
    public let invoicedValue: String
    public let statisticalValue: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemNumber: Int64,
        cnCode: String,
        description: Nullable<String>,
        countryCode: String,
        originCountry: Nullable<String>,
        partnerVat: Nullable<String>,
        transactionNature: String,
        transportMode: Nullable<String>,
        deliveryTerms: Nullable<String>,
        netMassKg: Nullable<String>,
        supplementaryUnit: Nullable<String>,
        supplementaryQty: Nullable<String>,
        invoicedValue: String,
        statisticalValue: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemNumber = itemNumber
        self.cnCode = cnCode
        self.description = description
        self.countryCode = countryCode
        self.originCountry = originCountry
        self.partnerVat = partnerVat
        self.transactionNature = transactionNature
        self.transportMode = transportMode
        self.deliveryTerms = deliveryTerms
        self.netMassKg = netMassKg
        self.supplementaryUnit = supplementaryUnit
        self.supplementaryQty = supplementaryQty
        self.invoicedValue = invoicedValue
        self.statisticalValue = statisticalValue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemNumber = try container.decode(Int64.self, forKey: .itemNumber)
        self.cnCode = try container.decode(String.self, forKey: .cnCode)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.originCountry = try container.decode(Nullable<String>.self, forKey: .originCountry)
        self.partnerVat = try container.decode(Nullable<String>.self, forKey: .partnerVat)
        self.transactionNature = try container.decode(String.self, forKey: .transactionNature)
        self.transportMode = try container.decode(Nullable<String>.self, forKey: .transportMode)
        self.deliveryTerms = try container.decode(Nullable<String>.self, forKey: .deliveryTerms)
        self.netMassKg = try container.decode(Nullable<String>.self, forKey: .netMassKg)
        self.supplementaryUnit = try container.decode(Nullable<String>.self, forKey: .supplementaryUnit)
        self.supplementaryQty = try container.decode(Nullable<String>.self, forKey: .supplementaryQty)
        self.invoicedValue = try container.decode(String.self, forKey: .invoicedValue)
        self.statisticalValue = try container.decode(Nullable<String>.self, forKey: .statisticalValue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.itemNumber, forKey: .itemNumber)
        try container.encode(self.cnCode, forKey: .cnCode)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.originCountry, forKey: .originCountry)
        try container.encode(self.partnerVat, forKey: .partnerVat)
        try container.encode(self.transactionNature, forKey: .transactionNature)
        try container.encode(self.transportMode, forKey: .transportMode)
        try container.encode(self.deliveryTerms, forKey: .deliveryTerms)
        try container.encode(self.netMassKg, forKey: .netMassKg)
        try container.encode(self.supplementaryUnit, forKey: .supplementaryUnit)
        try container.encode(self.supplementaryQty, forKey: .supplementaryQty)
        try container.encode(self.invoicedValue, forKey: .invoicedValue)
        try container.encode(self.statisticalValue, forKey: .statisticalValue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemNumber
        case cnCode
        case description
        case countryCode
        case originCountry
        case partnerVat
        case transactionNature
        case transportMode
        case deliveryTerms
        case netMassKg
        case supplementaryUnit
        case supplementaryQty
        case invoicedValue
        case statisticalValue
    }
}