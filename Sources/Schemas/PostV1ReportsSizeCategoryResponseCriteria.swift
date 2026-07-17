import Foundation

public struct PostV1ReportsSizeCategoryResponseCriteria: Codable, Hashable, Sendable {
    public let totalAssets: Double
    public let netTurnover: Double
    public let avgEmployees: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        totalAssets: Double,
        netTurnover: Double,
        avgEmployees: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.totalAssets = totalAssets
        self.netTurnover = netTurnover
        self.avgEmployees = avgEmployees
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.totalAssets = try container.decode(Double.self, forKey: .totalAssets)
        self.netTurnover = try container.decode(Double.self, forKey: .netTurnover)
        self.avgEmployees = try container.decode(Int64.self, forKey: .avgEmployees)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.totalAssets, forKey: .totalAssets)
        try container.encode(self.netTurnover, forKey: .netTurnover)
        try container.encode(self.avgEmployees, forKey: .avgEmployees)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case totalAssets
        case netTurnover
        case avgEmployees
    }
}