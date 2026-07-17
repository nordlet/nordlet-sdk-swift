import Foundation

extension Requests {
    public struct PostV1ConsolidationMembersAddRequest: Codable, Hashable, Sendable {
        public let groupId: String
        public let memberCompanyId: String
        public let ownershipPercent: Double?
        public let method: PostV1ConsolidationMembersAddRequestMethod?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            groupId: String,
            memberCompanyId: String,
            ownershipPercent: Double? = nil,
            method: PostV1ConsolidationMembersAddRequestMethod? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.groupId = groupId
            self.memberCompanyId = memberCompanyId
            self.ownershipPercent = ownershipPercent
            self.method = method
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.groupId = try container.decode(String.self, forKey: .groupId)
            self.memberCompanyId = try container.decode(String.self, forKey: .memberCompanyId)
            self.ownershipPercent = try container.decodeIfPresent(Double.self, forKey: .ownershipPercent)
            self.method = try container.decodeIfPresent(PostV1ConsolidationMembersAddRequestMethod.self, forKey: .method)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.groupId, forKey: .groupId)
            try container.encode(self.memberCompanyId, forKey: .memberCompanyId)
            try container.encodeIfPresent(self.ownershipPercent, forKey: .ownershipPercent)
            try container.encodeIfPresent(self.method, forKey: .method)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case groupId
            case memberCompanyId
            case ownershipPercent
            case method
        }
    }
}