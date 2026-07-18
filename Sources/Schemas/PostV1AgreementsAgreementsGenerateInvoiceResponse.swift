import Foundation

public struct PostV1AgreementsAgreementsGenerateInvoiceResponse: Codable, Hashable, Sendable {
    public let invoiceId: String
    public let periodStart: String
    public let periodEnd: String
    public let renewedEndDate: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceId: String,
        periodStart: String,
        periodEnd: String,
        renewedEndDate: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceId = invoiceId
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.renewedEndDate = renewedEndDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.renewedEndDate = try container.decode(Nullable<String>.self, forKey: .renewedEndDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.renewedEndDate, forKey: .renewedEndDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceId
        case periodStart
        case periodEnd
        case renewedEndDate
    }
}