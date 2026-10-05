import Foundation

extension Requests {
    public struct CreateCalendarRequest: Codable, Hashable, Sendable {
        public let title: String
        public let dueDate: CalendarDate
        public let notes: String?
        public let done: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            title: String,
            dueDate: CalendarDate,
            notes: String? = nil,
            done: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.title = title
            self.dueDate = dueDate
            self.notes = notes
            self.done = done
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.title = try container.decode(String.self, forKey: .title)
            self.dueDate = try container.decode(CalendarDate.self, forKey: .dueDate)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.done = try container.decodeIfPresent(Bool.self, forKey: .done)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.title, forKey: .title)
            try container.encode(self.dueDate, forKey: .dueDate)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.done, forKey: .done)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case title
            case dueDate
            case notes
            case done
        }
    }
}