import Foundation

extension Requests {
    public struct PostV1ConsolidationGroupsUpdateRequest: Codable, Hashable, Sendable {
        public let groupId: String
        public let name: String?
        public let presentationCurrency: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            groupId: String,
            name: String? = nil,
            presentationCurrency: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.groupId = groupId
            self.name = name
            self.presentationCurrency = presentationCurrency
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.groupId = try container.decode(String.self, forKey: .groupId)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.presentationCurrency = try container.decodeIfPresent(String.self, forKey: .presentationCurrency)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.groupId, forKey: .groupId)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.presentationCurrency, forKey: .presentationCurrency)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case groupId
            case name
            case presentationCurrency
        }
    }
}