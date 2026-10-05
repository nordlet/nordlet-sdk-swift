import Foundation

public struct IeCt1GenerateDeclarationsResponseCriteria: Codable, Hashable, Sendable {
    public let balanceSheetTotal: String
    public let turnover: String
    public let averageEmployees: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        balanceSheetTotal: String,
        turnover: String,
        averageEmployees: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.balanceSheetTotal = balanceSheetTotal
        self.turnover = turnover
        self.averageEmployees = averageEmployees
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.balanceSheetTotal = try container.decode(String.self, forKey: .balanceSheetTotal)
        self.turnover = try container.decode(String.self, forKey: .turnover)
        self.averageEmployees = try container.decode(Double.self, forKey: .averageEmployees)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.balanceSheetTotal, forKey: .balanceSheetTotal)
        try container.encode(self.turnover, forKey: .turnover)
        try container.encode(self.averageEmployees, forKey: .averageEmployees)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case balanceSheetTotal
        case turnover
        case averageEmployees
    }
}