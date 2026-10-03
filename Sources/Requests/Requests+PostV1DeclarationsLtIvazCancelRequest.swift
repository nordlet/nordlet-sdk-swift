import Foundation

extension Requests {
    public struct PostV1DeclarationsLtIvazCancelRequest: Codable, Hashable, Sendable {
        public let entries: [PostV1DeclarationsLtIvazCancelRequestEntriesItem]
        public let persist: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            entries: [PostV1DeclarationsLtIvazCancelRequestEntriesItem],
            persist: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.entries = entries
            self.persist = persist
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.entries = try container.decode([PostV1DeclarationsLtIvazCancelRequestEntriesItem].self, forKey: .entries)
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