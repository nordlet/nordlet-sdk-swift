import Foundation

extension Requests {
    public struct PostV1ProjectsTimeEntriesCreateRequest: Codable, Hashable, Sendable {
        public let projectId: String
        public let employeeId: String?
        public let date: String
        public let hours: String
        public let description: String?
        public let billable: Bool?
        public let hourlyRate: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            projectId: String,
            employeeId: String? = nil,
            date: String,
            hours: String,
            description: String? = nil,
            billable: Bool? = nil,
            hourlyRate: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.projectId = projectId
            self.employeeId = employeeId
            self.date = date
            self.hours = hours
            self.description = description
            self.billable = billable
            self.hourlyRate = hourlyRate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.projectId = try container.decode(String.self, forKey: .projectId)
            self.employeeId = try container.decodeIfPresent(String.self, forKey: .employeeId)
            self.date = try container.decode(String.self, forKey: .date)
            self.hours = try container.decode(String.self, forKey: .hours)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.billable = try container.decodeIfPresent(Bool.self, forKey: .billable)
            self.hourlyRate = try container.decodeIfPresent(String.self, forKey: .hourlyRate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.projectId, forKey: .projectId)
            try container.encodeIfPresent(self.employeeId, forKey: .employeeId)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.hours, forKey: .hours)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.billable, forKey: .billable)
            try container.encodeIfPresent(self.hourlyRate, forKey: .hourlyRate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case projectId
            case employeeId
            case date
            case hours
            case description
            case billable
            case hourlyRate
        }
    }
}