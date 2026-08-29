import Foundation

extension Requests {
    public struct PostV1ProductionMaintenanceCompleteRequest: Codable, Hashable, Sendable {
        public let id: String
        public let completedDate: String
        public let downtimeHours: String?
        public let cost: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            completedDate: String,
            downtimeHours: String? = nil,
            cost: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.completedDate = completedDate
            self.downtimeHours = downtimeHours
            self.cost = cost
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.completedDate = try container.decode(String.self, forKey: .completedDate)
            self.downtimeHours = try container.decodeIfPresent(String.self, forKey: .downtimeHours)
            self.cost = try container.decodeIfPresent(String.self, forKey: .cost)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.completedDate, forKey: .completedDate)
            try container.encodeIfPresent(self.downtimeHours, forKey: .downtimeHours)
            try container.encodeIfPresent(self.cost, forKey: .cost)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case completedDate
            case downtimeHours
            case cost
            case notes
        }
    }
}