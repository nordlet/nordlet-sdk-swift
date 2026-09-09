import Foundation

extension Requests {
    public struct PostV1AccountTableSettingsGetRequest: Codable, Hashable, Sendable {
        public let tableKey: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            tableKey: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.tableKey = tableKey
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.tableKey = try container.decode(String.self, forKey: .tableKey)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.tableKey, forKey: .tableKey)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case tableKey
        }
    }
}