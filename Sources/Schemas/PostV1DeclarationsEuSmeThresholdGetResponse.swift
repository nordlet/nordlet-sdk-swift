import Foundation

public struct PostV1DeclarationsEuSmeThresholdGetResponse: Codable, Hashable, Sendable {
    public let countryCode: String
    public let isVatPayer: Bool
    public let baseCurrency: String
    public let year: Int64
    public let threshold: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseThreshold>
    public let turnover: PostV1DeclarationsEuSmeThresholdGetResponseTurnover
    public let precedingTurnover: PostV1DeclarationsEuSmeThresholdGetResponsePrecedingTurnover
    public let status: PostV1DeclarationsEuSmeThresholdGetResponseStatus
    public let headroomAmount: Nullable<String>
    public let intraEu: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseIntraEu>
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        isVatPayer: Bool,
        baseCurrency: String,
        year: Int64,
        threshold: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseThreshold>,
        turnover: PostV1DeclarationsEuSmeThresholdGetResponseTurnover,
        precedingTurnover: PostV1DeclarationsEuSmeThresholdGetResponsePrecedingTurnover,
        status: PostV1DeclarationsEuSmeThresholdGetResponseStatus,
        headroomAmount: Nullable<String>,
        intraEu: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseIntraEu>,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.isVatPayer = isVatPayer
        self.baseCurrency = baseCurrency
        self.year = year
        self.threshold = threshold
        self.turnover = turnover
        self.precedingTurnover = precedingTurnover
        self.status = status
        self.headroomAmount = headroomAmount
        self.intraEu = intraEu
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.isVatPayer = try container.decode(Bool.self, forKey: .isVatPayer)
        self.baseCurrency = try container.decode(String.self, forKey: .baseCurrency)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.threshold = try container.decode(Nullable<PostV1DeclarationsEuSmeThresholdGetResponseThreshold>.self, forKey: .threshold)
        self.turnover = try container.decode(PostV1DeclarationsEuSmeThresholdGetResponseTurnover.self, forKey: .turnover)
        self.precedingTurnover = try container.decode(PostV1DeclarationsEuSmeThresholdGetResponsePrecedingTurnover.self, forKey: .precedingTurnover)
        self.status = try container.decode(PostV1DeclarationsEuSmeThresholdGetResponseStatus.self, forKey: .status)
        self.headroomAmount = try container.decode(Nullable<String>.self, forKey: .headroomAmount)
        self.intraEu = try container.decode(Nullable<PostV1DeclarationsEuSmeThresholdGetResponseIntraEu>.self, forKey: .intraEu)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.isVatPayer, forKey: .isVatPayer)
        try container.encode(self.baseCurrency, forKey: .baseCurrency)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.threshold, forKey: .threshold)
        try container.encode(self.turnover, forKey: .turnover)
        try container.encode(self.precedingTurnover, forKey: .precedingTurnover)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.headroomAmount, forKey: .headroomAmount)
        try container.encode(self.intraEu, forKey: .intraEu)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case isVatPayer
        case baseCurrency
        case year
        case threshold
        case turnover
        case precedingTurnover
        case status
        case headroomAmount
        case intraEu
        case warnings
    }
}