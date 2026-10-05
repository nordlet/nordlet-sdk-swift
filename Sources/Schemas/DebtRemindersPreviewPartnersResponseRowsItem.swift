import Foundation

public struct DebtRemindersPreviewPartnersResponseRowsItem: Codable, Hashable, Sendable {
    public let partnerId: String
    public let partnerName: String
    public let email: String
    public let locale: DebtRemindersPreviewPartnersResponseRowsItemLocale
    public let currency: String
    public let invoices: [DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem]
    public let totalDue: String
    public let interestDue: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        partnerId: String,
        partnerName: String,
        email: String,
        locale: DebtRemindersPreviewPartnersResponseRowsItemLocale,
        currency: String,
        invoices: [DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem],
        totalDue: String,
        interestDue: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.email = email
        self.locale = locale
        self.currency = currency
        self.invoices = invoices
        self.totalDue = totalDue
        self.interestDue = interestDue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.email = try container.decode(String.self, forKey: .email)
        self.locale = try container.decode(DebtRemindersPreviewPartnersResponseRowsItemLocale.self, forKey: .locale)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.invoices = try container.decode([DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem].self, forKey: .invoices)
        self.totalDue = try container.decode(String.self, forKey: .totalDue)
        self.interestDue = try container.decode(String.self, forKey: .interestDue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.locale, forKey: .locale)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.invoices, forKey: .invoices)
        try container.encode(self.totalDue, forKey: .totalDue)
        try container.encode(self.interestDue, forKey: .interestDue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case partnerId
        case partnerName
        case email
        case locale
        case currency
        case invoices
        case totalDue
        case interestDue
    }
}