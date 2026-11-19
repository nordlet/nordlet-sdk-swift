import Foundation

public struct GbVatReturnsGetDeclarationsResponse: Codable, Hashable, Sendable {
    public let periodKey: String
    public let vatDueSales: Double
    public let vatDueAcquisitions: Double
    public let totalVatDue: Double
    public let vatReclaimedCurrPeriod: Double
    public let netVatDue: Double
    public let totalValueSalesExVat: Double
    public let totalValuePurchasesExVat: Double
    public let totalValueGoodsSuppliedExVat: Double
    public let totalAcquisitionsExVat: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        periodKey: String,
        vatDueSales: Double,
        vatDueAcquisitions: Double,
        totalVatDue: Double,
        vatReclaimedCurrPeriod: Double,
        netVatDue: Double,
        totalValueSalesExVat: Double,
        totalValuePurchasesExVat: Double,
        totalValueGoodsSuppliedExVat: Double,
        totalAcquisitionsExVat: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.periodKey = periodKey
        self.vatDueSales = vatDueSales
        self.vatDueAcquisitions = vatDueAcquisitions
        self.totalVatDue = totalVatDue
        self.vatReclaimedCurrPeriod = vatReclaimedCurrPeriod
        self.netVatDue = netVatDue
        self.totalValueSalesExVat = totalValueSalesExVat
        self.totalValuePurchasesExVat = totalValuePurchasesExVat
        self.totalValueGoodsSuppliedExVat = totalValueGoodsSuppliedExVat
        self.totalAcquisitionsExVat = totalAcquisitionsExVat
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.periodKey = try container.decode(String.self, forKey: .periodKey)
        self.vatDueSales = try container.decode(Double.self, forKey: .vatDueSales)
        self.vatDueAcquisitions = try container.decode(Double.self, forKey: .vatDueAcquisitions)
        self.totalVatDue = try container.decode(Double.self, forKey: .totalVatDue)
        self.vatReclaimedCurrPeriod = try container.decode(Double.self, forKey: .vatReclaimedCurrPeriod)
        self.netVatDue = try container.decode(Double.self, forKey: .netVatDue)
        self.totalValueSalesExVat = try container.decode(Double.self, forKey: .totalValueSalesExVat)
        self.totalValuePurchasesExVat = try container.decode(Double.self, forKey: .totalValuePurchasesExVat)
        self.totalValueGoodsSuppliedExVat = try container.decode(Double.self, forKey: .totalValueGoodsSuppliedExVat)
        self.totalAcquisitionsExVat = try container.decode(Double.self, forKey: .totalAcquisitionsExVat)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.periodKey, forKey: .periodKey)
        try container.encode(self.vatDueSales, forKey: .vatDueSales)
        try container.encode(self.vatDueAcquisitions, forKey: .vatDueAcquisitions)
        try container.encode(self.totalVatDue, forKey: .totalVatDue)
        try container.encode(self.vatReclaimedCurrPeriod, forKey: .vatReclaimedCurrPeriod)
        try container.encode(self.netVatDue, forKey: .netVatDue)
        try container.encode(self.totalValueSalesExVat, forKey: .totalValueSalesExVat)
        try container.encode(self.totalValuePurchasesExVat, forKey: .totalValuePurchasesExVat)
        try container.encode(self.totalValueGoodsSuppliedExVat, forKey: .totalValueGoodsSuppliedExVat)
        try container.encode(self.totalAcquisitionsExVat, forKey: .totalAcquisitionsExVat)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case periodKey
        case vatDueSales
        case vatDueAcquisitions
        case totalVatDue
        case vatReclaimedCurrPeriod
        case netVatDue
        case totalValueSalesExVat = "totalValueSalesExVAT"
        case totalValuePurchasesExVat = "totalValuePurchasesExVAT"
        case totalValueGoodsSuppliedExVat = "totalValueGoodsSuppliedExVAT"
        case totalAcquisitionsExVat = "totalAcquisitionsExVAT"
    }
}