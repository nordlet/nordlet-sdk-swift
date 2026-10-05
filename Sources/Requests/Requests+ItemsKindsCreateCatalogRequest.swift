import Foundation

extension Requests {
    public struct ItemsKindsCreateCatalogRequest: Codable, Hashable, Sendable {
        public let code: String
        public let name: String
        public let saftType: ItemsKindsCreateCatalogRequestSaftType?
        public let quantityAccounting: Bool?
        public let sortOrder: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String,
            name: String,
            saftType: ItemsKindsCreateCatalogRequestSaftType? = nil,
            quantityAccounting: Bool? = nil,
            sortOrder: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.code = code
            self.name = name
            self.saftType = saftType
            self.quantityAccounting = quantityAccounting
            self.sortOrder = sortOrder
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decode(String.self, forKey: .code)
            self.name = try container.decode(String.self, forKey: .name)
            self.saftType = try container.decodeIfPresent(ItemsKindsCreateCatalogRequestSaftType.self, forKey: .saftType)
            self.quantityAccounting = try container.decodeIfPresent(Bool.self, forKey: .quantityAccounting)
            self.sortOrder = try container.decodeIfPresent(Int64.self, forKey: .sortOrder)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.code, forKey: .code)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.saftType, forKey: .saftType)
            try container.encodeIfPresent(self.quantityAccounting, forKey: .quantityAccounting)
            try container.encodeIfPresent(self.sortOrder, forKey: .sortOrder)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case code
            case name
            case saftType
            case quantityAccounting
            case sortOrder
        }
    }
}