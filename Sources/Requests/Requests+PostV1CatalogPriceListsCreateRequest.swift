import Foundation

extension Requests {
    public struct PostV1CatalogPriceListsCreateRequest: Codable, Hashable, Sendable {
        public let code: String
        public let name: String
        public let currency: String?
        public let isActive: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String,
            name: String,
            currency: String? = nil,
            isActive: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.code = code
            self.name = name
            self.currency = currency
            self.isActive = isActive
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decode(String.self, forKey: .code)
            self.name = try container.decode(String.self, forKey: .name)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.code, forKey: .code)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case code
            case name
            case currency
            case isActive
        }
    }
}