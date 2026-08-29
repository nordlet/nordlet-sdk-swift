import Foundation

public struct PostV1ConsolidationReportResponseCashFlow: Codable, Hashable, Sendable {
    public let openingCash: String
    public let closingCash: String
    public let netChange: String
    public let operating: PostV1ConsolidationReportResponseCashFlowOperating
    public let investing: PostV1ConsolidationReportResponseCashFlowInvesting
    public let financing: PostV1ConsolidationReportResponseCashFlowFinancing
    public let balanced: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        openingCash: String,
        closingCash: String,
        netChange: String,
        operating: PostV1ConsolidationReportResponseCashFlowOperating,
        investing: PostV1ConsolidationReportResponseCashFlowInvesting,
        financing: PostV1ConsolidationReportResponseCashFlowFinancing,
        balanced: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.openingCash = openingCash
        self.closingCash = closingCash
        self.netChange = netChange
        self.operating = operating
        self.investing = investing
        self.financing = financing
        self.balanced = balanced
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.openingCash = try container.decode(String.self, forKey: .openingCash)
        self.closingCash = try container.decode(String.self, forKey: .closingCash)
        self.netChange = try container.decode(String.self, forKey: .netChange)
        self.operating = try container.decode(PostV1ConsolidationReportResponseCashFlowOperating.self, forKey: .operating)
        self.investing = try container.decode(PostV1ConsolidationReportResponseCashFlowInvesting.self, forKey: .investing)
        self.financing = try container.decode(PostV1ConsolidationReportResponseCashFlowFinancing.self, forKey: .financing)
        self.balanced = try container.decode(Bool.self, forKey: .balanced)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.openingCash, forKey: .openingCash)
        try container.encode(self.closingCash, forKey: .closingCash)
        try container.encode(self.netChange, forKey: .netChange)
        try container.encode(self.operating, forKey: .operating)
        try container.encode(self.investing, forKey: .investing)
        try container.encode(self.financing, forKey: .financing)
        try container.encode(self.balanced, forKey: .balanced)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case openingCash
        case closingCash
        case netChange
        case operating
        case investing
        case financing
        case balanced
    }
}