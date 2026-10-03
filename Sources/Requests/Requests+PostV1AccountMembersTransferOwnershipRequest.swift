import Foundation

extension Requests {
    public struct PostV1AccountMembersTransferOwnershipRequest: Codable, Hashable, Sendable {
        public let userId: String
        public let movePayer: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            userId: String,
            movePayer: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.userId = userId
            self.movePayer = movePayer
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.userId = try container.decode(String.self, forKey: .userId)
            self.movePayer = try container.decodeIfPresent(Bool.self, forKey: .movePayer)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.userId, forKey: .userId)
            try container.encodeIfPresent(self.movePayer, forKey: .movePayer)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case userId
            case movePayer
        }
    }
}