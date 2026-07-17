import Foundation

extension Requests {
    public struct PostV1ReportsStockMovementRequest: Codable, Hashable, Sendable {
        public let fromDate: String
        public let toDate: String
        public let warehouseId: String?
        public let itemId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fromDate: String,
            toDate: String,
            warehouseId: String? = nil,
            itemId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fromDate = fromDate
            self.toDate = toDate
            self.warehouseId = warehouseId
            self.itemId = itemId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fromDate = try container.decode(String.self, forKey: .fromDate)
            self.toDate = try container.decode(String.self, forKey: .toDate)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encodeIfPresent(self.itemId, forKey: .itemId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fromDate
            case toDate
            case warehouseId
            case itemId
        }
    }
}