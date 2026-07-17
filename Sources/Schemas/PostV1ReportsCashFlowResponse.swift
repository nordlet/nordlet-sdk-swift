import Foundation

public struct PostV1ReportsCashFlowResponse: Codable, Hashable, Sendable {
    public let fromDate: String
    public let toDate: String
    public let openingCash: String
    public let closingCash: String
    public let netChange: String
    public let operating: PostV1ReportsCashFlowResponseOperating
    public let investing: PostV1ReportsCashFlowResponseInvesting
    public let financing: PostV1ReportsCashFlowResponseFinancing
    public let balanced: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromDate: String,
        toDate: String,
        openingCash: String,
        closingCash: String,
        netChange: String,
        operating: PostV1ReportsCashFlowResponseOperating,
        investing: PostV1ReportsCashFlowResponseInvesting,
        financing: PostV1ReportsCashFlowResponseFinancing,
        balanced: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromDate = fromDate
        self.toDate = toDate
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
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.openingCash = try container.decode(String.self, forKey: .openingCash)
        self.closingCash = try container.decode(String.self, forKey: .closingCash)
        self.netChange = try container.decode(String.self, forKey: .netChange)
        self.operating = try container.decode(PostV1ReportsCashFlowResponseOperating.self, forKey: .operating)
        self.investing = try container.decode(PostV1ReportsCashFlowResponseInvesting.self, forKey: .investing)
        self.financing = try container.decode(PostV1ReportsCashFlowResponseFinancing.self, forKey: .financing)
        self.balanced = try container.decode(Bool.self, forKey: .balanced)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
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
        case fromDate
        case toDate
        case openingCash
        case closingCash
        case netChange
        case operating
        case investing
        case financing
        case balanced
    }
}