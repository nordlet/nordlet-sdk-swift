import Foundation

public struct PostV1ConsolidationReportResponseMembersItem: Codable, Hashable, Sendable {
    public let companyId: String
    public let name: String
    public let baseCurrency: String
    public let ownershipPercent: String
    public let method: PostV1ConsolidationReportResponseMembersItemMethod
    public let fxFactor: String
    public let rateFrom: String
    public let rateTo: String
    public let totalAssets: String
    public let netEquity: String
    public let periodResult: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        companyId: String,
        name: String,
        baseCurrency: String,
        ownershipPercent: String,
        method: PostV1ConsolidationReportResponseMembersItemMethod,
        fxFactor: String,
        rateFrom: String,
        rateTo: String,
        totalAssets: String,
        netEquity: String,
        periodResult: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.companyId = companyId
        self.name = name
        self.baseCurrency = baseCurrency
        self.ownershipPercent = ownershipPercent
        self.method = method
        self.fxFactor = fxFactor
        self.rateFrom = rateFrom
        self.rateTo = rateTo
        self.totalAssets = totalAssets
        self.netEquity = netEquity
        self.periodResult = periodResult
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.companyId = try container.decode(String.self, forKey: .companyId)
        self.name = try container.decode(String.self, forKey: .name)
        self.baseCurrency = try container.decode(String.self, forKey: .baseCurrency)
        self.ownershipPercent = try container.decode(String.self, forKey: .ownershipPercent)
        self.method = try container.decode(PostV1ConsolidationReportResponseMembersItemMethod.self, forKey: .method)
        self.fxFactor = try container.decode(String.self, forKey: .fxFactor)
        self.rateFrom = try container.decode(String.self, forKey: .rateFrom)
        self.rateTo = try container.decode(String.self, forKey: .rateTo)
        self.totalAssets = try container.decode(String.self, forKey: .totalAssets)
        self.netEquity = try container.decode(String.self, forKey: .netEquity)
        self.periodResult = try container.decode(String.self, forKey: .periodResult)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.companyId, forKey: .companyId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.baseCurrency, forKey: .baseCurrency)
        try container.encode(self.ownershipPercent, forKey: .ownershipPercent)
        try container.encode(self.method, forKey: .method)
        try container.encode(self.fxFactor, forKey: .fxFactor)
        try container.encode(self.rateFrom, forKey: .rateFrom)
        try container.encode(self.rateTo, forKey: .rateTo)
        try container.encode(self.totalAssets, forKey: .totalAssets)
        try container.encode(self.netEquity, forKey: .netEquity)
        try container.encode(self.periodResult, forKey: .periodResult)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case companyId
        case name
        case baseCurrency
        case ownershipPercent
        case method
        case fxFactor
        case rateFrom
        case rateTo
        case totalAssets
        case netEquity
        case periodResult
    }
}