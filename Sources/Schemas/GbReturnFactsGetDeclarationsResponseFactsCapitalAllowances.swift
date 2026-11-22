import Foundation

public struct GbReturnFactsGetDeclarationsResponseFactsCapitalAllowances: Codable, Hashable, Sendable {
    public let fullExpensing: String?
    public let annualInvestmentAllowance: String?
    public let specialRatePool: String?
    public let mainPool: String?
    public let structuresAndBuildings: String?
    public let other: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fullExpensing: String? = nil,
        annualInvestmentAllowance: String? = nil,
        specialRatePool: String? = nil,
        mainPool: String? = nil,
        structuresAndBuildings: String? = nil,
        other: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fullExpensing = fullExpensing
        self.annualInvestmentAllowance = annualInvestmentAllowance
        self.specialRatePool = specialRatePool
        self.mainPool = mainPool
        self.structuresAndBuildings = structuresAndBuildings
        self.other = other
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fullExpensing = try container.decodeIfPresent(String.self, forKey: .fullExpensing)
        self.annualInvestmentAllowance = try container.decodeIfPresent(String.self, forKey: .annualInvestmentAllowance)
        self.specialRatePool = try container.decodeIfPresent(String.self, forKey: .specialRatePool)
        self.mainPool = try container.decodeIfPresent(String.self, forKey: .mainPool)
        self.structuresAndBuildings = try container.decodeIfPresent(String.self, forKey: .structuresAndBuildings)
        self.other = try container.decodeIfPresent(String.self, forKey: .other)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.fullExpensing, forKey: .fullExpensing)
        try container.encodeIfPresent(self.annualInvestmentAllowance, forKey: .annualInvestmentAllowance)
        try container.encodeIfPresent(self.specialRatePool, forKey: .specialRatePool)
        try container.encodeIfPresent(self.mainPool, forKey: .mainPool)
        try container.encodeIfPresent(self.structuresAndBuildings, forKey: .structuresAndBuildings)
        try container.encodeIfPresent(self.other, forKey: .other)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fullExpensing
        case annualInvestmentAllowance
        case specialRatePool
        case mainPool
        case structuresAndBuildings
        case other
    }
}