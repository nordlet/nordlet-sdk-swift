import Foundation

public struct UsWorkweeksListDeclarationsResponseEmployeesItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let firstName: String
    public let lastName: String
    public let workweekStart: String
    public let exempt: Bool
    public let weeks: [UsWorkweeksListDeclarationsResponseEmployeesItemWeeksItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        firstName: String,
        lastName: String,
        workweekStart: String,
        exempt: Bool,
        weeks: [UsWorkweeksListDeclarationsResponseEmployeesItemWeeksItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.firstName = firstName
        self.lastName = lastName
        self.workweekStart = workweekStart
        self.exempt = exempt
        self.weeks = weeks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.workweekStart = try container.decode(String.self, forKey: .workweekStart)
        self.exempt = try container.decode(Bool.self, forKey: .exempt)
        self.weeks = try container.decode([UsWorkweeksListDeclarationsResponseEmployeesItemWeeksItem].self, forKey: .weeks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.workweekStart, forKey: .workweekStart)
        try container.encode(self.exempt, forKey: .exempt)
        try container.encode(self.weeks, forKey: .weeks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case firstName
        case lastName
        case workweekStart
        case exempt
        case weeks
    }
}