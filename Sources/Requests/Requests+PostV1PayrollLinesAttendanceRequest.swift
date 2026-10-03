import Foundation

extension Requests {
    public struct PostV1PayrollLinesAttendanceRequest: Codable, Hashable, Sendable {
        public let id: String
        public let daysWorked: Nullable<String>?
        public let hoursWorked: Nullable<String>?
        public let registeredDays: Nullable<String>?
        public let averageHourlyEarnings: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            daysWorked: Nullable<String>? = nil,
            hoursWorked: Nullable<String>? = nil,
            registeredDays: Nullable<String>? = nil,
            averageHourlyEarnings: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.daysWorked = daysWorked
            self.hoursWorked = hoursWorked
            self.registeredDays = registeredDays
            self.averageHourlyEarnings = averageHourlyEarnings
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.daysWorked = try container.decodeNullableIfPresent(String.self, forKey: .daysWorked)
            self.hoursWorked = try container.decodeNullableIfPresent(String.self, forKey: .hoursWorked)
            self.registeredDays = try container.decodeNullableIfPresent(String.self, forKey: .registeredDays)
            self.averageHourlyEarnings = try container.decodeNullableIfPresent(String.self, forKey: .averageHourlyEarnings)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeNullableIfPresent(self.daysWorked, forKey: .daysWorked)
            try container.encodeNullableIfPresent(self.hoursWorked, forKey: .hoursWorked)
            try container.encodeNullableIfPresent(self.registeredDays, forKey: .registeredDays)
            try container.encodeNullableIfPresent(self.averageHourlyEarnings, forKey: .averageHourlyEarnings)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case daysWorked
            case hoursWorked
            case registeredDays
            case averageHourlyEarnings
        }
    }
}