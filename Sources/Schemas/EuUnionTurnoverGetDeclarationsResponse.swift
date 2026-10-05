import Foundation

public struct EuUnionTurnoverGetDeclarationsResponse: Codable, Hashable, Sendable {
    public let capEur: String
    public let currency: String
    public let isVatPayer: Bool
    public let currentYear: EuUnionTurnoverGetDeclarationsResponseCurrentYear
    public let previousYear: EuUnionTurnoverGetDeclarationsResponsePreviousYear
    public let status: EuUnionTurnoverGetDeclarationsResponseStatus
    public let headroomAmount: Nullable<String>
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capEur: String,
        currency: String,
        isVatPayer: Bool,
        currentYear: EuUnionTurnoverGetDeclarationsResponseCurrentYear,
        previousYear: EuUnionTurnoverGetDeclarationsResponsePreviousYear,
        status: EuUnionTurnoverGetDeclarationsResponseStatus,
        headroomAmount: Nullable<String>,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.capEur = capEur
        self.currency = currency
        self.isVatPayer = isVatPayer
        self.currentYear = currentYear
        self.previousYear = previousYear
        self.status = status
        self.headroomAmount = headroomAmount
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capEur = try container.decode(String.self, forKey: .capEur)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.isVatPayer = try container.decode(Bool.self, forKey: .isVatPayer)
        self.currentYear = try container.decode(EuUnionTurnoverGetDeclarationsResponseCurrentYear.self, forKey: .currentYear)
        self.previousYear = try container.decode(EuUnionTurnoverGetDeclarationsResponsePreviousYear.self, forKey: .previousYear)
        self.status = try container.decode(EuUnionTurnoverGetDeclarationsResponseStatus.self, forKey: .status)
        self.headroomAmount = try container.decode(Nullable<String>.self, forKey: .headroomAmount)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.capEur, forKey: .capEur)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.isVatPayer, forKey: .isVatPayer)
        try container.encode(self.currentYear, forKey: .currentYear)
        try container.encode(self.previousYear, forKey: .previousYear)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.headroomAmount, forKey: .headroomAmount)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case capEur
        case currency
        case isVatPayer
        case currentYear
        case previousYear
        case status
        case headroomAmount
        case warnings
    }
}