import Foundation

public struct PostV1ReportsSizeCategoryResponseThresholdsValue: Codable, Hashable, Sendable {
    public let totalAssets: Double
    public let netTurnover: Double
    public let employees: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        totalAssets: Double,
        netTurnover: Double,
        employees: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.totalAssets = totalAssets
        self.netTurnover = netTurnover
        self.employees = employees
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.totalAssets = try container.decode(Double.self, forKey: .totalAssets)
        self.netTurnover = try container.decode(Double.self, forKey: .netTurnover)
        self.employees = try container.decode(Double.self, forKey: .employees)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.totalAssets, forKey: .totalAssets)
        try container.encode(self.netTurnover, forKey: .netTurnover)
        try container.encode(self.employees, forKey: .employees)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case totalAssets
        case netTurnover
        case employees
    }
}