import Foundation

extension Requests {
    public struct PostV1ReportsStockBalanceRequest: Codable, Hashable, Sendable {
        public let asOf: String
        public let warehouseId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            asOf: String,
            warehouseId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.asOf = asOf
            self.warehouseId = warehouseId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.asOf = try container.decode(String.self, forKey: .asOf)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.asOf, forKey: .asOf)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case asOf
            case warehouseId
        }
    }
}