import Foundation

extension Requests {
    public struct PostV1WebhooksSubscriptionsUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let url: String?
        public let events: [String]?
        public let isActive: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            url: String? = nil,
            events: [String]? = nil,
            isActive: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.url = url
            self.events = events
            self.isActive = isActive
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.url = try container.decodeIfPresent(String.self, forKey: .url)
            self.events = try container.decodeIfPresent([String].self, forKey: .events)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.url, forKey: .url)
            try container.encodeIfPresent(self.events, forKey: .events)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case url
            case events
            case isActive
        }
    }
}