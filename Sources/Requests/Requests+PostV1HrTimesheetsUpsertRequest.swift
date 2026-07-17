import Foundation

extension Requests {
    public struct PostV1HrTimesheetsUpsertRequest: Codable, Hashable, Sendable {
        public let employeeId: String
        public let year: Int64
        public let month: Int64
        public let days: [PostV1HrTimesheetsUpsertRequestDaysItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            employeeId: String,
            year: Int64,
            month: Int64,
            days: [PostV1HrTimesheetsUpsertRequestDaysItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.employeeId = employeeId
            self.year = year
            self.month = month
            self.days = days
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.employeeId = try container.decode(String.self, forKey: .employeeId)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decode(Int64.self, forKey: .month)
            self.days = try container.decode([PostV1HrTimesheetsUpsertRequestDaysItem].self, forKey: .days)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.employeeId, forKey: .employeeId)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.month, forKey: .month)
            try container.encode(self.days, forKey: .days)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case employeeId
            case year
            case month
            case days
        }
    }
}