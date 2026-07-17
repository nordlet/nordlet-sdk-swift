import Foundation

extension Requests {
    public struct PostV1ConsolidationMembersRemoveRequest: Codable, Hashable, Sendable {
        public let groupId: String
        public let memberCompanyId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            groupId: String,
            memberCompanyId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.groupId = groupId
            self.memberCompanyId = memberCompanyId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.groupId = try container.decode(String.self, forKey: .groupId)
            self.memberCompanyId = try container.decode(String.self, forKey: .memberCompanyId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.groupId, forKey: .groupId)
            try container.encode(self.memberCompanyId, forKey: .memberCompanyId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case groupId
            case memberCompanyId
        }
    }
}