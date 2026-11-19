import Foundation

public struct Us941GetDeclarationsResponseLine16MonthsItem: Codable, Hashable, Sendable {
    public let month: Double
    public let liability: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        month: Double,
        liability: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.month = month
        self.liability = liability
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.month = try container.decode(Double.self, forKey: .month)
        self.liability = try container.decode(String.self, forKey: .liability)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.liability, forKey: .liability)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case month
        case liability
    }
}