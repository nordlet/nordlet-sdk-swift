import Foundation

public struct LtPln204ComputeDeclarationsResponseCriteria: Codable, Hashable, Sendable {
    public let netTurnover: String
    public let avgEmployees: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        netTurnover: String,
        avgEmployees: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.netTurnover = netTurnover
        self.avgEmployees = avgEmployees
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.netTurnover = try container.decode(String.self, forKey: .netTurnover)
        self.avgEmployees = try container.decode(Double.self, forKey: .avgEmployees)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.netTurnover, forKey: .netTurnover)
        try container.encode(self.avgEmployees, forKey: .avgEmployees)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case netTurnover
        case avgEmployees
    }
}