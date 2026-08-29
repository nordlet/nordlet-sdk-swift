import Foundation

public struct PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemCounterpart: Codable, Hashable, Sendable {
    public let invoiceId: String
    public let status: PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemCounterpartStatus
    public let paymentStatus: PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemCounterpartPaymentStatus
    public let grossTotal: String
    public let amountsMatch: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceId: String,
        status: PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemCounterpartStatus,
        paymentStatus: PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemCounterpartPaymentStatus,
        grossTotal: String,
        amountsMatch: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceId = invoiceId
        self.status = status
        self.paymentStatus = paymentStatus
        self.grossTotal = grossTotal
        self.amountsMatch = amountsMatch
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.status = try container.decode(PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemCounterpartStatus.self, forKey: .status)
        self.paymentStatus = try container.decode(PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemCounterpartPaymentStatus.self, forKey: .paymentStatus)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.amountsMatch = try container.decode(Bool.self, forKey: .amountsMatch)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.paymentStatus, forKey: .paymentStatus)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.amountsMatch, forKey: .amountsMatch)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceId
        case status
        case paymentStatus
        case grossTotal
        case amountsMatch
    }
}