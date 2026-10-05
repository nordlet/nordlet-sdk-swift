import Foundation

extension Requests {
    public struct LtIvazCancelDeclarationsRequest: Codable, Hashable, Sendable {
        public let entries: [LtIvazCancelDeclarationsRequestEntriesItem]
        public let persist: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            entries: [LtIvazCancelDeclarationsRequestEntriesItem],
            persist: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.entries = entries
            self.persist = persist
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.entries = try container.decode([LtIvazCancelDeclarationsRequestEntriesItem].self, forKey: .entries)
            self.persist = try container.decodeIfPresent(Bool.self, forKey: .persist)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.entries, forKey: .entries)
            try container.encodeIfPresent(self.persist, forKey: .persist)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case entries
            case persist
        }
    }
}