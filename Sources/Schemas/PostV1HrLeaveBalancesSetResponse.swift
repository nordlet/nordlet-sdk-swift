import Foundation

public struct PostV1HrLeaveBalancesSetResponse: Codable, Hashable, Sendable {
    public let employeeId: String
    public let year: Int64
    public let entitledDays: String
    public let usedDays: String
    public let remainingDays: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        year: Int64,
        entitledDays: String,
        usedDays: String,
        remainingDays: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.year = year
        self.entitledDays = entitledDays
        self.usedDays = usedDays
        self.remainingDays = remainingDays
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.entitledDays = try container.decode(String.self, forKey: .entitledDays)
        self.usedDays = try container.decode(String.self, forKey: .usedDays)
        self.remainingDays = try container.decode(String.self, forKey: .remainingDays)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.entitledDays, forKey: .entitledDays)
        try container.encode(self.usedDays, forKey: .usedDays)
        try container.encode(self.remainingDays, forKey: .remainingDays)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case year
        case entitledDays
        case usedDays
        case remainingDays
    }
}