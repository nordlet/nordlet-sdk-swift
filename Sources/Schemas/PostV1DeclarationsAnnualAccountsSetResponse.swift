import Foundation

public struct PostV1DeclarationsAnnualAccountsSetResponse: Codable, Hashable, Sendable {
    public let id: String
    public let year: Int64
    public let adopted: Bool
    public let adoptionDate: Nullable<String>
    public let dateOfPreparation: String
    public let audited: Bool
    public let auditReportQualified: Nullable<Bool>
    public let auditorNotElected: Bool
    public let notesText: Nullable<String>
    public let managementReportText: Nullable<String>
    public let auditorReportText: Nullable<String>
    public let auditorReportDate: Nullable<String>
    public let resultToReserves: Nullable<String>
    public let resultToLossCompensation: Nullable<String>
    public let resultToRemainder: Nullable<String>
    public let signatures: [PostV1DeclarationsAnnualAccountsSetResponseSignaturesItem]
    public let distributions: [PostV1DeclarationsAnnualAccountsSetResponseDistributionsItem]
    public let attachments: [PostV1DeclarationsAnnualAccountsSetResponseAttachmentsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        year: Int64,
        adopted: Bool,
        adoptionDate: Nullable<String>,
        dateOfPreparation: String,
        audited: Bool,
        auditReportQualified: Nullable<Bool>,
        auditorNotElected: Bool,
        notesText: Nullable<String>,
        managementReportText: Nullable<String>,
        auditorReportText: Nullable<String>,
        auditorReportDate: Nullable<String>,
        resultToReserves: Nullable<String>,
        resultToLossCompensation: Nullable<String>,
        resultToRemainder: Nullable<String>,
        signatures: [PostV1DeclarationsAnnualAccountsSetResponseSignaturesItem],
        distributions: [PostV1DeclarationsAnnualAccountsSetResponseDistributionsItem],
        attachments: [PostV1DeclarationsAnnualAccountsSetResponseAttachmentsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.year = year
        self.adopted = adopted
        self.adoptionDate = adoptionDate
        self.dateOfPreparation = dateOfPreparation
        self.audited = audited
        self.auditReportQualified = auditReportQualified
        self.auditorNotElected = auditorNotElected
        self.notesText = notesText
        self.managementReportText = managementReportText
        self.auditorReportText = auditorReportText
        self.auditorReportDate = auditorReportDate
        self.resultToReserves = resultToReserves
        self.resultToLossCompensation = resultToLossCompensation
        self.resultToRemainder = resultToRemainder
        self.signatures = signatures
        self.distributions = distributions
        self.attachments = attachments
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.adopted = try container.decode(Bool.self, forKey: .adopted)
        self.adoptionDate = try container.decode(Nullable<String>.self, forKey: .adoptionDate)
        self.dateOfPreparation = try container.decode(String.self, forKey: .dateOfPreparation)
        self.audited = try container.decode(Bool.self, forKey: .audited)
        self.auditReportQualified = try container.decode(Nullable<Bool>.self, forKey: .auditReportQualified)
        self.auditorNotElected = try container.decode(Bool.self, forKey: .auditorNotElected)
        self.notesText = try container.decode(Nullable<String>.self, forKey: .notesText)
        self.managementReportText = try container.decode(Nullable<String>.self, forKey: .managementReportText)
        self.auditorReportText = try container.decode(Nullable<String>.self, forKey: .auditorReportText)
        self.auditorReportDate = try container.decode(Nullable<String>.self, forKey: .auditorReportDate)
        self.resultToReserves = try container.decode(Nullable<String>.self, forKey: .resultToReserves)
        self.resultToLossCompensation = try container.decode(Nullable<String>.self, forKey: .resultToLossCompensation)
        self.resultToRemainder = try container.decode(Nullable<String>.self, forKey: .resultToRemainder)
        self.signatures = try container.decode([PostV1DeclarationsAnnualAccountsSetResponseSignaturesItem].self, forKey: .signatures)
        self.distributions = try container.decode([PostV1DeclarationsAnnualAccountsSetResponseDistributionsItem].self, forKey: .distributions)
        self.attachments = try container.decode([PostV1DeclarationsAnnualAccountsSetResponseAttachmentsItem].self, forKey: .attachments)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.adopted, forKey: .adopted)
        try container.encode(self.adoptionDate, forKey: .adoptionDate)
        try container.encode(self.dateOfPreparation, forKey: .dateOfPreparation)
        try container.encode(self.audited, forKey: .audited)
        try container.encode(self.auditReportQualified, forKey: .auditReportQualified)
        try container.encode(self.auditorNotElected, forKey: .auditorNotElected)
        try container.encode(self.notesText, forKey: .notesText)
        try container.encode(self.managementReportText, forKey: .managementReportText)
        try container.encode(self.auditorReportText, forKey: .auditorReportText)
        try container.encode(self.auditorReportDate, forKey: .auditorReportDate)
        try container.encode(self.resultToReserves, forKey: .resultToReserves)
        try container.encode(self.resultToLossCompensation, forKey: .resultToLossCompensation)
        try container.encode(self.resultToRemainder, forKey: .resultToRemainder)
        try container.encode(self.signatures, forKey: .signatures)
        try container.encode(self.distributions, forKey: .distributions)
        try container.encode(self.attachments, forKey: .attachments)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case year
        case adopted
        case adoptionDate
        case dateOfPreparation
        case audited
        case auditReportQualified
        case auditorNotElected
        case notesText
        case managementReportText
        case auditorReportText
        case auditorReportDate
        case resultToReserves
        case resultToLossCompensation
        case resultToRemainder
        case signatures
        case distributions
        case attachments
    }
}