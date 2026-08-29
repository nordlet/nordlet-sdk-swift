import Foundation

public struct PostV1SalesInvoicesCreateResponseVatEvidence: Codable, Hashable, Sendable {
    public let capturedAt: String
    public let issueDate: String
    public let scheme: PostV1SalesInvoicesCreateResponseVatEvidenceScheme
    public let partner: PostV1SalesInvoicesCreateResponseVatEvidencePartner
    public let vies: Nullable<PostV1SalesInvoicesCreateResponseVatEvidenceVies>
    public let location: PostV1SalesInvoicesCreateResponseVatEvidenceLocation
    public let rateTable: Nullable<PostV1SalesInvoicesCreateResponseVatEvidenceRateTable>
    public let rates: [PostV1SalesInvoicesCreateResponseVatEvidenceRatesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capturedAt: String,
        issueDate: String,
        scheme: PostV1SalesInvoicesCreateResponseVatEvidenceScheme,
        partner: PostV1SalesInvoicesCreateResponseVatEvidencePartner,
        vies: Nullable<PostV1SalesInvoicesCreateResponseVatEvidenceVies>,
        location: PostV1SalesInvoicesCreateResponseVatEvidenceLocation,
        rateTable: Nullable<PostV1SalesInvoicesCreateResponseVatEvidenceRateTable>,
        rates: [PostV1SalesInvoicesCreateResponseVatEvidenceRatesItem],
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
        self.capturedAt = try container.decode(String.self, forKey: .capturedAt)
        self.issueDate = try container.decode(String.self, forKey: .issueDate)
        self.scheme = try container.decode(PostV1SalesInvoicesCreateResponseVatEvidenceScheme.self, forKey: .scheme)
        self.partner = try container.decode(PostV1SalesInvoicesCreateResponseVatEvidencePartner.self, forKey: .partner)
        self.vies = try container.decode(Nullable<PostV1SalesInvoicesCreateResponseVatEvidenceVies>.self, forKey: .vies)
        self.location = try container.decode(PostV1SalesInvoicesCreateResponseVatEvidenceLocation.self, forKey: .location)
        self.rateTable = try container.decode(Nullable<PostV1SalesInvoicesCreateResponseVatEvidenceRateTable>.self, forKey: .rateTable)
        self.rates = try container.decode([PostV1SalesInvoicesCreateResponseVatEvidenceRatesItem].self, forKey: .rates)
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