import Foundation

public struct PostV1AgreementsAgreementsBillingRunResponseGeneratedItem: Codable, Hashable, Sendable {
    public let agreementId: String
    public let invoiceId: String
    public let periodStart: String
    public let periodEnd: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        agreementId: String,
        invoiceId: String,
        periodStart: String,
        periodEnd: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.agreementId = agreementId
        self.invoiceId = invoiceId
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.agreementId = try container.decode(String.self, forKey: .agreementId)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.agreementId, forKey: .agreementId)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case agreementId
        case invoiceId
        case periodStart
        case periodEnd
    }
}