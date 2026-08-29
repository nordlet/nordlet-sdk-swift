import Foundation

public struct PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItem: Codable, Hashable, Sendable {
    public let sourceInvoiceId: String
    public let fullNumber: String
    public let issueDate: String
    public let type: PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemType
    public let currency: String
    public let grossTotal: String
    public let paymentStatus: PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemPaymentStatus
    public let match: PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemMatch
    public let counterpart: Nullable<PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemCounterpart>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sourceInvoiceId: String,
        fullNumber: String,
        issueDate: String,
        type: PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemType,
        currency: String,
        grossTotal: String,
        paymentStatus: PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemPaymentStatus,
        match: PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemMatch,
        counterpart: Nullable<PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemCounterpart>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sourceInvoiceId = sourceInvoiceId
        self.fullNumber = fullNumber
        self.issueDate = issueDate
        self.type = type
        self.currency = currency
        self.grossTotal = grossTotal
        self.paymentStatus = paymentStatus
        self.match = match
        self.counterpart = counterpart
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sourceInvoiceId = try container.decode(String.self, forKey: .sourceInvoiceId)
        self.fullNumber = try container.decode(String.self, forKey: .fullNumber)
        self.issueDate = try container.decode(String.self, forKey: .issueDate)
        self.type = try container.decode(PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemType.self, forKey: .type)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.paymentStatus = try container.decode(PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemPaymentStatus.self, forKey: .paymentStatus)
        self.match = try container.decode(PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemMatch.self, forKey: .match)
        self.counterpart = try container.decode(Nullable<PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemCounterpart>.self, forKey: .counterpart)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sourceInvoiceId, forKey: .sourceInvoiceId)
        try container.encode(self.fullNumber, forKey: .fullNumber)
        try container.encode(self.issueDate, forKey: .issueDate)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.paymentStatus, forKey: .paymentStatus)
        try container.encode(self.match, forKey: .match)
        try container.encode(self.counterpart, forKey: .counterpart)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sourceInvoiceId
        case fullNumber
        case issueDate
        case type
        case currency
        case grossTotal
        case paymentStatus
        case match
        case counterpart
    }
}