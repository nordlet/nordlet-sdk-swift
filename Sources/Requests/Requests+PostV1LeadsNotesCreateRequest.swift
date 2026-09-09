import Foundation

extension Requests {
    public struct PostV1LeadsNotesCreateRequest: Codable, Hashable, Sendable {
        public let leadId: String
        public let body: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            leadId: String,
            body: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.leadId = leadId
            self.body = body
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.leadId = try container.decode(String.self, forKey: .leadId)
            self.body = try container.decode(String.self, forKey: .body)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.leadId, forKey: .leadId)
            try container.encode(self.body, forKey: .body)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case leadId
            case body
        }
    }
}