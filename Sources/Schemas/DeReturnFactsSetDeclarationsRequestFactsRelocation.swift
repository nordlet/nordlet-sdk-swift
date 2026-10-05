import Foundation

public struct DeReturnFactsSetDeclarationsRequestFactsRelocation: Codable, Hashable, Sendable {
    public let date: CalendarDate
    public let from: String
    public let to: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        date: CalendarDate,
        from: String,
        to: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.date = date
        self.from = from
        self.to = to
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.from = try container.decode(String.self, forKey: .from)
        self.to = try container.decode(String.self, forKey: .to)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.from, forKey: .from)
        try container.encode(self.to, forKey: .to)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case from
        case to
    }
}