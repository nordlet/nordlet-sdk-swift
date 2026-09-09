import Foundation

extension Requests {
    public struct PostV1CalendarUpdateRequest: Codable, Hashable, Sendable {
        public let key: String
        public let title: String?
        public let dueDate: String?
        public let notes: Nullable<String>?
        public let done: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            key: String,
            title: String? = nil,
            dueDate: String? = nil,
            notes: Nullable<String>? = nil,
            done: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.key = key
            self.title = title
            self.dueDate = dueDate
            self.notes = notes
            self.done = done
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.key = try container.decode(String.self, forKey: .key)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.dueDate = try container.decodeIfPresent(String.self, forKey: .dueDate)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.done = try container.decodeIfPresent(Bool.self, forKey: .done)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.key, forKey: .key)
            try container.encodeIfPresent(self.title, forKey: .title)
            try container.encodeIfPresent(self.dueDate, forKey: .dueDate)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.done, forKey: .done)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case key
            case title
            case dueDate
            case notes
            case done
        }
    }
}