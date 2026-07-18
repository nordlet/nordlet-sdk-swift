import Foundation

public struct PostV1DeclarationsEuDistanceSalesThresholdGetResponse: Codable, Hashable, Sendable {
    public let thresholdEur: String
    public let homeCountryCode: String
    public let currentYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponseCurrentYear
    public let precedingYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponsePrecedingYear
    public let belowThreshold: Bool
    public let headroomAmount: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        thresholdEur: String,
        homeCountryCode: String,
        currentYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponseCurrentYear,
        precedingYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponsePrecedingYear,
        belowThreshold: Bool,
        headroomAmount: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.thresholdEur = thresholdEur
        self.homeCountryCode = homeCountryCode
        self.currentYear = currentYear
        self.precedingYear = precedingYear
        self.belowThreshold = belowThreshold
        self.headroomAmount = headroomAmount
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.thresholdEur = try container.decode(String.self, forKey: .thresholdEur)
        self.homeCountryCode = try container.decode(String.self, forKey: .homeCountryCode)
        self.currentYear = try container.decode(PostV1DeclarationsEuDistanceSalesThresholdGetResponseCurrentYear.self, forKey: .currentYear)
        self.precedingYear = try container.decode(PostV1DeclarationsEuDistanceSalesThresholdGetResponsePrecedingYear.self, forKey: .precedingYear)
        self.belowThreshold = try container.decode(Bool.self, forKey: .belowThreshold)
        self.headroomAmount = try container.decode(String.self, forKey: .headroomAmount)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.thresholdEur, forKey: .thresholdEur)
        try container.encode(self.homeCountryCode, forKey: .homeCountryCode)
        try container.encode(self.currentYear, forKey: .currentYear)
        try container.encode(self.precedingYear, forKey: .precedingYear)
        try container.encode(self.belowThreshold, forKey: .belowThreshold)
        try container.encode(self.headroomAmount, forKey: .headroomAmount)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case thresholdEur
        case homeCountryCode
        case currentYear
        case precedingYear
        case belowThreshold
        case headroomAmount
        case warnings
    }
}