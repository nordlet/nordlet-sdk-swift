import Foundation

extension Requests {
    public struct PostV1CalendarListRequest: Codable, Hashable, Sendable {
        public let from: String?
        public let to: String?
        public let includeDone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            from: String? = nil,
            to: String? = nil,
            includeDone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.from = from
            self.to = to
            self.includeDone = includeDone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.from = try container.decodeIfPresent(String.self, forKey: .from)
            self.to = try container.decodeIfPresent(String.self, forKey: .to)
            self.includeDone = try container.decodeIfPresent(Bool.self, forKey: .includeDone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.from, forKey: .from)
            try container.encodeIfPresent(self.to, forKey: .to)
            try container.encodeIfPresent(self.includeDone, forKey: .includeDone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case from
            case to
            case includeDone
        }
    }
}