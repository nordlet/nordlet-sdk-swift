import Foundation

public struct PostV1ConsolidationIntercompanyReportResponseDirectionsItem: Codable, Hashable, Sendable {
    public let sellerCompanyId: String
    public let sellerName: String
    public let buyerCompanyId: String
    public let buyerName: String
    public let documents: [PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItem]
    public let unmatchedPurchases: [PostV1ConsolidationIntercompanyReportResponseDirectionsItemUnmatchedPurchasesItem]
    public let totals: [PostV1ConsolidationIntercompanyReportResponseDirectionsItemTotalsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sellerCompanyId: String,
        sellerName: String,
        buyerCompanyId: String,
        buyerName: String,
        documents: [PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItem],
        unmatchedPurchases: [PostV1ConsolidationIntercompanyReportResponseDirectionsItemUnmatchedPurchasesItem],
        totals: [PostV1ConsolidationIntercompanyReportResponseDirectionsItemTotalsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sellerCompanyId = sellerCompanyId
        self.sellerName = sellerName
        self.buyerCompanyId = buyerCompanyId
        self.buyerName = buyerName
        self.documents = documents
        self.unmatchedPurchases = unmatchedPurchases
        self.totals = totals
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sellerCompanyId = try container.decode(String.self, forKey: .sellerCompanyId)
        self.sellerName = try container.decode(String.self, forKey: .sellerName)
        self.buyerCompanyId = try container.decode(String.self, forKey: .buyerCompanyId)
        self.buyerName = try container.decode(String.self, forKey: .buyerName)
        self.documents = try container.decode([PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItem].self, forKey: .documents)
        self.unmatchedPurchases = try container.decode([PostV1ConsolidationIntercompanyReportResponseDirectionsItemUnmatchedPurchasesItem].self, forKey: .unmatchedPurchases)
        self.totals = try container.decode([PostV1ConsolidationIntercompanyReportResponseDirectionsItemTotalsItem].self, forKey: .totals)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sellerCompanyId, forKey: .sellerCompanyId)
        try container.encode(self.sellerName, forKey: .sellerName)
        try container.encode(self.buyerCompanyId, forKey: .buyerCompanyId)
        try container.encode(self.buyerName, forKey: .buyerName)
        try container.encode(self.documents, forKey: .documents)
        try container.encode(self.unmatchedPurchases, forKey: .unmatchedPurchases)
        try container.encode(self.totals, forKey: .totals)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sellerCompanyId
        case sellerName
        case buyerCompanyId
        case buyerName
        case documents
        case unmatchedPurchases
        case totals
    }
}