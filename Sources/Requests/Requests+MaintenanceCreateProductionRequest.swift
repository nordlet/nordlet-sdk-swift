import Foundation

extension Requests {
    public struct MaintenanceCreateProductionRequest: Codable, Hashable, Sendable {
        public let workCenterId: String
        public let type: MaintenanceCreateProductionRequestType
        public let plannedDate: CalendarDate
        public let description: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            workCenterId: String,
            type: MaintenanceCreateProductionRequestType,
            plannedDate: CalendarDate,
            description: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.workCenterId = workCenterId
            self.type = type
            self.plannedDate = plannedDate
            self.description = description
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.workCenterId = try container.decode(String.self, forKey: .workCenterId)
            self.type = try container.decode(MaintenanceCreateProductionRequestType.self, forKey: .type)
            self.plannedDate = try container.decode(CalendarDate.self, forKey: .plannedDate)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.workCenterId, forKey: .workCenterId)
            try container.encode(self.type, forKey: .type)
            try container.encode(self.plannedDate, forKey: .plannedDate)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case workCenterId
            case type
            case plannedDate
            case description
            case notes
        }
    }
}