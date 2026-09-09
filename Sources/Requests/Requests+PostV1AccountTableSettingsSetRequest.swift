import Foundation

extension Requests {
    public struct PostV1AccountTableSettingsSetRequest: Codable, Hashable, Sendable {
        public let tableKey: String
        public let columns: Nullable<[String]>?
        public let pageSize: Nullable<Double>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            tableKey: String,
            columns: Nullable<[String]>? = nil,
            pageSize: Nullable<Double>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.tableKey = tableKey
            self.columns = columns
            self.pageSize = pageSize
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.tableKey = try container.decode(String.self, forKey: .tableKey)
            self.columns = try container.decodeNullableIfPresent([String].self, forKey: .columns)
            self.pageSize = try container.decodeNullableIfPresent(Double.self, forKey: .pageSize)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.tableKey, forKey: .tableKey)
            try container.encodeNullableIfPresent(self.columns, forKey: .columns)
            try container.encodeNullableIfPresent(self.pageSize, forKey: .pageSize)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case tableKey
            case columns
            case pageSize
        }
    }
}