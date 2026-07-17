import Foundation

extension Requests {
    public struct PostV1EcommerceProductsListRequest: Codable, Hashable, Sendable {
        public let warehouseId: String?
        public let priceListId: String?
        public let updatedSince: Date?
        public let page: Int64?
        public let pageSize: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            warehouseId: String? = nil,
            priceListId: String? = nil,
            updatedSince: Date? = nil,
            page: Int64? = nil,
            pageSize: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.warehouseId = warehouseId
            self.priceListId = priceListId
            self.updatedSince = updatedSince
            self.page = page
            self.pageSize = pageSize
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.priceListId = try container.decodeIfPresent(String.self, forKey: .priceListId)
            self.updatedSince = try container.decodeIfPresent(Date.self, forKey: .updatedSince)
            self.page = try container.decodeIfPresent(Int64.self, forKey: .page)
            self.pageSize = try container.decodeIfPresent(Int64.self, forKey: .pageSize)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encodeIfPresent(self.priceListId, forKey: .priceListId)
            try container.encodeIfPresent(self.updatedSince, forKey: .updatedSince)
            try container.encodeIfPresent(self.page, forKey: .page)
            try container.encodeIfPresent(self.pageSize, forKey: .pageSize)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case warehouseId
            case priceListId
            case updatedSince
            case page
            case pageSize
        }
    }
}