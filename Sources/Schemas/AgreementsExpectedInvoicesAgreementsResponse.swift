import Foundation

public struct AgreementsExpectedInvoicesAgreementsResponse: Codable, Hashable, Sendable {
    public let agreementId: String
    public let number: String
    public let currency: String
    public let periods: [AgreementsExpectedInvoicesAgreementsResponsePeriodsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        agreementId: String,
        number: String,
        currency: String,
        periods: [AgreementsExpectedInvoicesAgreementsResponsePeriodsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.agreementId = agreementId
        self.number = number
        self.currency = currency
        self.periods = periods
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.agreementId = try container.decode(String.self, forKey: .agreementId)
        self.number = try container.decode(String.self, forKey: .number)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.periods = try container.decode([AgreementsExpectedInvoicesAgreementsResponsePeriodsItem].self, forKey: .periods)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.agreementId, forKey: .agreementId)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.periods, forKey: .periods)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case agreementId
        case number
        case currency
        case periods
    }
}