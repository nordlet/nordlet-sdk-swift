import Foundation

extension Requests {
    public struct PostV1DeclarationsEeEmploymentRegisterSendRequest: Codable, Hashable, Sendable {
        public let contractId: String
        public let event: PostV1DeclarationsEeEmploymentRegisterSendRequestEvent
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contractId: String,
            event: PostV1DeclarationsEeEmploymentRegisterSendRequestEvent,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contractId = contractId
            self.event = event
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contractId = try container.decode(String.self, forKey: .contractId)
            self.event = try container.decode(PostV1DeclarationsEeEmploymentRegisterSendRequestEvent.self, forKey: .event)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.contractId, forKey: .contractId)
            try container.encode(self.event, forKey: .event)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contractId
            case event
        }
    }
}