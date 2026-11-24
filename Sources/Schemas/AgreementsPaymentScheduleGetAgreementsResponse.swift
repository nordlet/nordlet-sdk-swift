import Foundation

public struct AgreementsPaymentScheduleGetAgreementsResponse: Codable, Hashable, Sendable {
    public let agreementId: String
    public let currency: String
    public let value: Nullable<String>
    public let rows: [AgreementsPaymentScheduleGetAgreementsResponseRowsItem]
    public let totals: AgreementsPaymentScheduleGetAgreementsResponseTotals
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        agreementId: String,
        currency: String,
        value: Nullable<String>,
        rows: [AgreementsPaymentScheduleGetAgreementsResponseRowsItem],
        totals: AgreementsPaymentScheduleGetAgreementsResponseTotals,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.agreementId = agreementId
        self.currency = currency
        self.value = value
        self.rows = rows
        self.totals = totals
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.agreementId = try container.decode(String.self, forKey: .agreementId)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.value = try container.decode(Nullable<String>.self, forKey: .value)
        self.rows = try container.decode([AgreementsPaymentScheduleGetAgreementsResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(AgreementsPaymentScheduleGetAgreementsResponseTotals.self, forKey: .totals)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.agreementId, forKey: .agreementId)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.value, forKey: .value)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case agreementId
        case currency
        case value
        case rows
        case totals
    }
}