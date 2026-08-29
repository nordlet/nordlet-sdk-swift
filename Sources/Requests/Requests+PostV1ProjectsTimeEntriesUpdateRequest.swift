import Foundation

extension Requests {
    public struct PostV1ProjectsTimeEntriesUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let date: String?
        public let hours: String?
        public let description: Nullable<String>?
        public let billable: Bool?
        public let hourlyRate: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            date: String? = nil,
            hours: String? = nil,
            description: Nullable<String>? = nil,
            billable: Bool? = nil,
            hourlyRate: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.date = date
            self.hours = hours
            self.description = description
            self.billable = billable
            self.hourlyRate = hourlyRate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.date = try container.decodeIfPresent(String.self, forKey: .date)
            self.hours = try container.decodeIfPresent(String.self, forKey: .hours)
            self.description = try container.decodeNullableIfPresent(String.self, forKey: .description)
            self.billable = try container.decodeIfPresent(Bool.self, forKey: .billable)
            self.hourlyRate = try container.decodeNullableIfPresent(String.self, forKey: .hourlyRate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.date, forKey: .date)
            try container.encodeIfPresent(self.hours, forKey: .hours)
            try container.encodeNullableIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.billable, forKey: .billable)
            try container.encodeNullableIfPresent(self.hourlyRate, forKey: .hourlyRate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case date
            case hours
            case description
            case billable
            case hourlyRate
        }
    }
}