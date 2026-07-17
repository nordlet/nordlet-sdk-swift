import Foundation

extension Requests {
    public struct PostV1InventoryWarehousesCreateRequest: Codable, Hashable, Sendable {
        public let code: String
        public let name: String
        public let isDefault: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String,
            name: String,
            isDefault: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.code = code
            self.name = name
            self.isDefault = isDefault
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decode(String.self, forKey: .code)
            self.name = try container.decode(String.self, forKey: .name)
            self.isDefault = try container.decodeIfPresent(Bool.self, forKey: .isDefault)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.code, forKey: .code)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.isDefault, forKey: .isDefault)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case code
            case name
            case isDefault
        }
    }
}