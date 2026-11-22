import Foundation

public struct UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweeksItem: Codable, Hashable, Sendable {
    public let start: String
    public let end: String
    public let hours: String
    public let overtimeHours: String
    public let days: [UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweeksItemDaysItem]
    public let regularRate: Nullable<String>
    public let straightTimeEarnings: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        start: String,
        end: String,
        hours: String,
        overtimeHours: String,
        days: [UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweeksItemDaysItem],
        regularRate: Nullable<String>,
        straightTimeEarnings: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.start = start
        self.end = end
        self.hours = hours
        self.overtimeHours = overtimeHours
        self.days = days
        self.regularRate = regularRate
        self.straightTimeEarnings = straightTimeEarnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.start = try container.decode(String.self, forKey: .start)
        self.end = try container.decode(String.self, forKey: .end)
        self.hours = try container.decode(String.self, forKey: .hours)
        self.overtimeHours = try container.decode(String.self, forKey: .overtimeHours)
        self.days = try container.decode([UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweeksItemDaysItem].self, forKey: .days)
        self.regularRate = try container.decode(Nullable<String>.self, forKey: .regularRate)
        self.straightTimeEarnings = try container.decode(Nullable<String>.self, forKey: .straightTimeEarnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.start, forKey: .start)
        try container.encode(self.end, forKey: .end)
        try container.encode(self.hours, forKey: .hours)
        try container.encode(self.overtimeHours, forKey: .overtimeHours)
        try container.encode(self.days, forKey: .days)
        try container.encode(self.regularRate, forKey: .regularRate)
        try container.encode(self.straightTimeEarnings, forKey: .straightTimeEarnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case start
        case end
        case hours
        case overtimeHours
        case days
        case regularRate
        case straightTimeEarnings
    }
}