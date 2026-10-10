import Foundation

extension Requests {
    public struct ParticipantsLookupPeppolRequest: Codable, Hashable, Sendable {
        public let partnerId: String?
        public let participantId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String? = nil,
            participantId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.participantId = participantId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.participantId = try container.decodeIfPresent(String.self, forKey: .participantId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.participantId, forKey: .participantId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case participantId
        }
    }
}