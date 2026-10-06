import Foundation

public struct DebtRemindersPreviewPartnersResponseRowsItem: Codable, Hashable, Sendable {
    public let partnerId: String
    public let partnerName: String
    public let email: String
    public let locale: DebtRemindersPreviewPartnersResponseRowsItemLocale
    public let invoices: [DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem]
    public let totals: [DebtRemindersPreviewPartnersResponseRowsItemTotalsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        partnerId: String,
        partnerName: String,
        email: String,
        locale: DebtRemindersPreviewPartnersResponseRowsItemLocale,
        invoices: [DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem],
        totals: [DebtRemindersPreviewPartnersResponseRowsItemTotalsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.email = email
        self.locale = locale
        self.invoices = invoices
        self.totals = totals
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.email = try container.decode(String.self, forKey: .email)
        self.locale = try container.decode(DebtRemindersPreviewPartnersResponseRowsItemLocale.self, forKey: .locale)
        self.invoices = try container.decode([DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem].self, forKey: .invoices)
        self.totals = try container.decode([DebtRemindersPreviewPartnersResponseRowsItemTotalsItem].self, forKey: .totals)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.locale, forKey: .locale)
        try container.encode(self.invoices, forKey: .invoices)
        try container.encode(self.totals, forKey: .totals)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case partnerId
        case partnerName
        case email
        case locale
        case invoices
        case totals
    }
}