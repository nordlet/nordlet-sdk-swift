import Foundation

public struct PostV1HrTimesheetsGetResponse: Codable, Hashable, Sendable {
    public let id: String
    public let employeeId: String
    public let employeeName: String
    public let year: Int64
    public let month: Int64
    public let days: [PostV1HrTimesheetsGetResponseDaysItem]
    public let workedDays: String
    public let workedHours: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        employeeId: String,
        employeeName: String,
        year: Int64,
        month: Int64,
        days: [PostV1HrTimesheetsGetResponseDaysItem],
        workedDays: String,
        workedHours: String,
        updatedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.employeeId = employeeId
        self.employeeName = employeeName
        self.year = year
        self.month = month
        self.days = days
        self.workedDays = workedDays
        self.workedHours = workedHours
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.employeeName = try container.decode(String.self, forKey: .employeeName)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.days = try container.decode([PostV1HrTimesheetsGetResponseDaysItem].self, forKey: .days)
        self.workedDays = try container.decode(String.self, forKey: .workedDays)
        self.workedHours = try container.decode(String.self, forKey: .workedHours)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.employeeName, forKey: .employeeName)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.days, forKey: .days)
        try container.encode(self.workedDays, forKey: .workedDays)
        try container.encode(self.workedHours, forKey: .workedHours)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case employeeId
        case employeeName
        case year
        case month
        case days
        case workedDays
        case workedHours
        case updatedAt
    }
}