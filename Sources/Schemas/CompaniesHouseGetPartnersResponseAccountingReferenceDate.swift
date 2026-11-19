import Foundation

public struct CompaniesHouseGetPartnersResponseAccountingReferenceDate: Codable, Hashable, Sendable {
    public let day: Int64
    public let month: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        day: Int64,
        month: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.day = day
        self.month = month
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.day = try container.decode(Int64.self, forKey: .day)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.day, forKey: .day)
        try container.encode(self.month, forKey: .month)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case day
        case month
    }
}