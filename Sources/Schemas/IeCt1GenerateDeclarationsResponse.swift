import Foundation

public struct IeCt1GenerateDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let periodStart: String
    public let periodEnd: String
    public let taxRegNumber: String
    public let ct1: IeCt1GenerateDeclarationsResponseCt1
    public let accounts: Nullable<IeCt1GenerateDeclarationsResponseAccounts>
    public let accountsBlocking: [String]
    public let ixbrlMandatory: Bool
    public let criteria: IeCt1GenerateDeclarationsResponseCriteria
    public let fields: [IeCt1GenerateDeclarationsResponseFieldsItem]
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        periodStart: String,
        periodEnd: String,
        taxRegNumber: String,
        ct1: IeCt1GenerateDeclarationsResponseCt1,
        accounts: Nullable<IeCt1GenerateDeclarationsResponseAccounts>,
        accountsBlocking: [String],
        ixbrlMandatory: Bool,
        criteria: IeCt1GenerateDeclarationsResponseCriteria,
        fields: [IeCt1GenerateDeclarationsResponseFieldsItem],
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.taxRegNumber = taxRegNumber
        self.ct1 = ct1
        self.accounts = accounts
        self.accountsBlocking = accountsBlocking
        self.ixbrlMandatory = ixbrlMandatory
        self.criteria = criteria
        self.fields = fields
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.taxRegNumber = try container.decode(String.self, forKey: .taxRegNumber)
        self.ct1 = try container.decode(IeCt1GenerateDeclarationsResponseCt1.self, forKey: .ct1)
        self.accounts = try container.decode(Nullable<IeCt1GenerateDeclarationsResponseAccounts>.self, forKey: .accounts)
        self.accountsBlocking = try container.decode([String].self, forKey: .accountsBlocking)
        self.ixbrlMandatory = try container.decode(Bool.self, forKey: .ixbrlMandatory)
        self.criteria = try container.decode(IeCt1GenerateDeclarationsResponseCriteria.self, forKey: .criteria)
        self.fields = try container.decode([IeCt1GenerateDeclarationsResponseFieldsItem].self, forKey: .fields)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.taxRegNumber, forKey: .taxRegNumber)
        try container.encode(self.ct1, forKey: .ct1)
        try container.encode(self.accounts, forKey: .accounts)
        try container.encode(self.accountsBlocking, forKey: .accountsBlocking)
        try container.encode(self.ixbrlMandatory, forKey: .ixbrlMandatory)
        try container.encode(self.criteria, forKey: .criteria)
        try container.encode(self.fields, forKey: .fields)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case periodStart
        case periodEnd
        case taxRegNumber
        case ct1
        case accounts
        case accountsBlocking
        case ixbrlMandatory
        case criteria
        case fields
        case warnings
        case notes
        case source
    }
}