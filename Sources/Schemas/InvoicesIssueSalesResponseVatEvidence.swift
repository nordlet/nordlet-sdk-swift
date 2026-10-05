import Foundation

public struct InvoicesIssueSalesResponseVatEvidence: Codable, Hashable, Sendable {
    public let capturedAt: Date
    public let issueDate: CalendarDate
    public let scheme: InvoicesIssueSalesResponseVatEvidenceScheme
    public let partner: InvoicesIssueSalesResponseVatEvidencePartner
    public let vies: Nullable<InvoicesIssueSalesResponseVatEvidenceVies>
    public let location: InvoicesIssueSalesResponseVatEvidenceLocation
    public let rateTable: Nullable<InvoicesIssueSalesResponseVatEvidenceRateTable>
    public let rates: [InvoicesIssueSalesResponseVatEvidenceRatesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capturedAt: Date,
        issueDate: CalendarDate,
        scheme: InvoicesIssueSalesResponseVatEvidenceScheme,
        partner: InvoicesIssueSalesResponseVatEvidencePartner,
        vies: Nullable<InvoicesIssueSalesResponseVatEvidenceVies>,
        location: InvoicesIssueSalesResponseVatEvidenceLocation,
        rateTable: Nullable<InvoicesIssueSalesResponseVatEvidenceRateTable>,
        rates: [InvoicesIssueSalesResponseVatEvidenceRatesItem],
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
        self.scheme = try container.decode(InvoicesIssueSalesResponseVatEvidenceScheme.self, forKey: .scheme)
        self.partner = try container.decode(InvoicesIssueSalesResponseVatEvidencePartner.self, forKey: .partner)
        self.vies = try container.decode(Nullable<InvoicesIssueSalesResponseVatEvidenceVies>.self, forKey: .vies)
        self.location = try container.decode(InvoicesIssueSalesResponseVatEvidenceLocation.self, forKey: .location)
        self.rateTable = try container.decode(Nullable<InvoicesIssueSalesResponseVatEvidenceRateTable>.self, forKey: .rateTable)
        self.rates = try container.decode([InvoicesIssueSalesResponseVatEvidenceRatesItem].self, forKey: .rates)
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