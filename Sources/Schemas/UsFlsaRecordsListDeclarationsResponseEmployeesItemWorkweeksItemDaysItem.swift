import Foundation

public struct UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweeksItemDaysItem: Codable, Hashable, Sendable {
    public let date: CalendarDate
    public let hours: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        date: CalendarDate,
        hours: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.date = date
        self.hours = hours
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.hours = try container.decode(String.self, forKey: .hours)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.hours, forKey: .hours)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case hours
    }
}