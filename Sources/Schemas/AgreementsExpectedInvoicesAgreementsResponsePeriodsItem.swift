import Foundation

public struct AgreementsExpectedInvoicesAgreementsResponsePeriodsItem: Codable, Hashable, Sendable {
    public let periodStart: String
    public let periodEnd: String
    public let expectedNet: Nullable<String>
    public let missing: Bool
    public let purchaseInvoices: [AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        periodStart: String,
        periodEnd: String,
        expectedNet: Nullable<String>,
        missing: Bool,
        purchaseInvoices: [AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.expectedNet = expectedNet
        self.missing = missing
        self.purchaseInvoices = purchaseInvoices
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.expectedNet = try container.decode(Nullable<String>.self, forKey: .expectedNet)
        self.missing = try container.decode(Bool.self, forKey: .missing)
        self.purchaseInvoices = try container.decode([AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItem].self, forKey: .purchaseInvoices)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.expectedNet, forKey: .expectedNet)
        try container.encode(self.missing, forKey: .missing)
        try container.encode(self.purchaseInvoices, forKey: .purchaseInvoices)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case periodStart
        case periodEnd
        case expectedNet
        case missing
        case purchaseInvoices
    }
}