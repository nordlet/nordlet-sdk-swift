import Foundation

public struct AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItem: Codable, Hashable, Sendable {
    public let id: String
    public let documentNumber: String
    public let documentDate: CalendarDate
    public let status: AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItemStatus
    public let type: AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItemType
    public let netTotal: String
    public let currency: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        documentNumber: String,
        documentDate: CalendarDate,
        status: AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItemStatus,
        type: AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItemType,
        netTotal: String,
        currency: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.documentNumber = documentNumber
        self.documentDate = documentDate
        self.status = status
        self.type = type
        self.netTotal = netTotal
        self.currency = currency
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.documentNumber = try container.decode(String.self, forKey: .documentNumber)
        self.documentDate = try container.decode(CalendarDate.self, forKey: .documentDate)
        self.status = try container.decode(AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItemStatus.self, forKey: .status)
        self.type = try container.decode(AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItemType.self, forKey: .type)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.documentNumber, forKey: .documentNumber)
        try container.encode(self.documentDate, forKey: .documentDate)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.currency, forKey: .currency)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case documentNumber
        case documentDate
        case status
        case type
        case netTotal
        case currency
    }
}