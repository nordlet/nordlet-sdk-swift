import Foundation

extension Requests {
    public struct PostV1LedgerCostCentersUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let name: String?
        public let isActive: Bool?
        public let groupId: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            name: String? = nil,
            isActive: Bool? = nil,
            groupId: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.name = name
            self.isActive = isActive
            self.groupId = groupId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.groupId = try container.decodeNullableIfPresent(String.self, forKey: .groupId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
            try container.encodeNullableIfPresent(self.groupId, forKey: .groupId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case name
            case isActive
            case groupId
        }
    }
}