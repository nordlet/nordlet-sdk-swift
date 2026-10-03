import Foundation

extension Requests {
    public struct PostV1AccountApiKeysRotateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let overlapHours: Int64?
        public let expiresInDays: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            overlapHours: Int64? = nil,
            expiresInDays: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.overlapHours = overlapHours
            self.expiresInDays = expiresInDays
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.overlapHours = try container.decodeIfPresent(Int64.self, forKey: .overlapHours)
            self.expiresInDays = try container.decodeIfPresent(Int64.self, forKey: .expiresInDays)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.overlapHours, forKey: .overlapHours)
            try container.encodeIfPresent(self.expiresInDays, forKey: .expiresInDays)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case overlapHours
            case expiresInDays
        }
    }
}