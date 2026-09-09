import Foundation

public struct PostV1SalesInvoicesLockResponseVatEvidence: Codable, Hashable, Sendable {
    public let capturedAt: String
    public let issueDate: String
    public let scheme: PostV1SalesInvoicesLockResponseVatEvidenceScheme
    public let partner: PostV1SalesInvoicesLockResponseVatEvidencePartner
    public let vies: Nullable<PostV1SalesInvoicesLockResponseVatEvidenceVies>
    public let location: PostV1SalesInvoicesLockResponseVatEvidenceLocation
    public let rateTable: Nullable<PostV1SalesInvoicesLockResponseVatEvidenceRateTable>
    public let rates: [PostV1SalesInvoicesLockResponseVatEvidenceRatesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capturedAt: String,
        issueDate: String,
        scheme: PostV1SalesInvoicesLockResponseVatEvidenceScheme,
        partner: PostV1SalesInvoicesLockResponseVatEvidencePartner,
        vies: Nullable<PostV1SalesInvoicesLockResponseVatEvidenceVies>,
        location: PostV1SalesInvoicesLockResponseVatEvidenceLocation,
        rateTable: Nullable<PostV1SalesInvoicesLockResponseVatEvidenceRateTable>,
        rates: [PostV1SalesInvoicesLockResponseVatEvidenceRatesItem],
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
        self.scheme = try container.decode(PostV1SalesInvoicesLockResponseVatEvidenceScheme.self, forKey: .scheme)
        self.partner = try container.decode(PostV1SalesInvoicesLockResponseVatEvidencePartner.self, forKey: .partner)
        self.vies = try container.decode(Nullable<PostV1SalesInvoicesLockResponseVatEvidenceVies>.self, forKey: .vies)
        self.location = try container.decode(PostV1SalesInvoicesLockResponseVatEvidenceLocation.self, forKey: .location)
        self.rateTable = try container.decode(Nullable<PostV1SalesInvoicesLockResponseVatEvidenceRateTable>.self, forKey: .rateTable)
        self.rates = try container.decode([PostV1SalesInvoicesLockResponseVatEvidenceRatesItem].self, forKey: .rates)
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