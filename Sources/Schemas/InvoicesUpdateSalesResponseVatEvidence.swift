import Foundation

public struct InvoicesUpdateSalesResponseVatEvidence: Codable, Hashable, Sendable {
    public let capturedAt: Date
    public let issueDate: CalendarDate
    public let scheme: InvoicesUpdateSalesResponseVatEvidenceScheme
    public let partner: InvoicesUpdateSalesResponseVatEvidencePartner
    public let vies: Nullable<InvoicesUpdateSalesResponseVatEvidenceVies>
    public let location: InvoicesUpdateSalesResponseVatEvidenceLocation
    public let rateTable: Nullable<InvoicesUpdateSalesResponseVatEvidenceRateTable>
    public let rates: [InvoicesUpdateSalesResponseVatEvidenceRatesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capturedAt: Date,
        issueDate: CalendarDate,
        scheme: InvoicesUpdateSalesResponseVatEvidenceScheme,
        partner: InvoicesUpdateSalesResponseVatEvidencePartner,
        vies: Nullable<InvoicesUpdateSalesResponseVatEvidenceVies>,
        location: InvoicesUpdateSalesResponseVatEvidenceLocation,
        rateTable: Nullable<InvoicesUpdateSalesResponseVatEvidenceRateTable>,
        rates: [InvoicesUpdateSalesResponseVatEvidenceRatesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.capturedAt = capturedAt
        self.issueDate = issueDate
        self.scheme = scheme
        self.partner = partner
        self.vies = vies
        self.location = location
        self.rateTable = rateTable
        self.rates = rates
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capturedAt = try container.decode(Date.self, forKey: .capturedAt)
        self.issueDate = try container.decode(CalendarDate.self, forKey: .issueDate)
        self.scheme = try container.decode(InvoicesUpdateSalesResponseVatEvidenceScheme.self, forKey: .scheme)
        self.partner = try container.decode(InvoicesUpdateSalesResponseVatEvidencePartner.self, forKey: .partner)
        self.vies = try container.decode(Nullable<InvoicesUpdateSalesResponseVatEvidenceVies>.self, forKey: .vies)
        self.location = try container.decode(InvoicesUpdateSalesResponseVatEvidenceLocation.self, forKey: .location)
        self.rateTable = try container.decode(Nullable<InvoicesUpdateSalesResponseVatEvidenceRateTable>.self, forKey: .rateTable)
        self.rates = try container.decode([InvoicesUpdateSalesResponseVatEvidenceRatesItem].self, forKey: .rates)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.capturedAt, forKey: .capturedAt)
        try container.encode(self.issueDate, forKey: .issueDate)
        try container.encode(self.scheme, forKey: .scheme)
        try container.encode(self.partner, forKey: .partner)
        try container.encode(self.vies, forKey: .vies)
        try container.encode(self.location, forKey: .location)
        try container.encode(self.rateTable, forKey: .rateTable)
        try container.encode(self.rates, forKey: .rates)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case capturedAt
        case issueDate
        case scheme
        case partner
        case vies
        case location
        case rateTable
        case rates
    }
}