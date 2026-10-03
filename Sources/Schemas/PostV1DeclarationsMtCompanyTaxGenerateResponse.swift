import Foundation

public struct PostV1DeclarationsMtCompanyTaxGenerateResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let yearOfAssessment: Int64
    public let periodStart: String
    public let periodEnd: String
    public let incomeTaxNumber: String
    public let fileName: String
    public let xml: String
    public let fields: [PostV1DeclarationsMtCompanyTaxGenerateResponseFieldsItem]
    public let taxAccounts: [PostV1DeclarationsMtCompanyTaxGenerateResponseTaxAccountsItem]
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        yearOfAssessment: Int64,
        periodStart: String,
        periodEnd: String,
        incomeTaxNumber: String,
        fileName: String,
        xml: String,
        fields: [PostV1DeclarationsMtCompanyTaxGenerateResponseFieldsItem],
        taxAccounts: [PostV1DeclarationsMtCompanyTaxGenerateResponseTaxAccountsItem],
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.yearOfAssessment = yearOfAssessment
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.incomeTaxNumber = incomeTaxNumber
        self.fileName = fileName
        self.xml = xml
        self.fields = fields
        self.taxAccounts = taxAccounts
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.yearOfAssessment = try container.decode(Int64.self, forKey: .yearOfAssessment)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.incomeTaxNumber = try container.decode(String.self, forKey: .incomeTaxNumber)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.fields = try container.decode([PostV1DeclarationsMtCompanyTaxGenerateResponseFieldsItem].self, forKey: .fields)
        self.taxAccounts = try container.decode([PostV1DeclarationsMtCompanyTaxGenerateResponseTaxAccountsItem].self, forKey: .taxAccounts)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.yearOfAssessment, forKey: .yearOfAssessment)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.incomeTaxNumber, forKey: .incomeTaxNumber)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.fields, forKey: .fields)
        try container.encode(self.taxAccounts, forKey: .taxAccounts)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case yearOfAssessment
        case periodStart
        case periodEnd
        case incomeTaxNumber
        case fileName
        case xml
        case fields
        case taxAccounts
        case warnings
        case notes
        case source
    }
}