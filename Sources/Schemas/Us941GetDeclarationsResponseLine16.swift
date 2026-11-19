import Foundation

public struct Us941GetDeclarationsResponseLine16: Codable, Hashable, Sendable {
    public let months: [Us941GetDeclarationsResponseLine16MonthsItem]
    public let total: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        months: [Us941GetDeclarationsResponseLine16MonthsItem],
        total: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.months = months
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.months = try container.decode([Us941GetDeclarationsResponseLine16MonthsItem].self, forKey: .months)
        self.total = try container.decode(String.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.months, forKey: .months)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case months
        case total
    }
}