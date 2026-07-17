import Foundation

extension Requests {
    public struct PostV1ProductionOrdersCreateRequest: Codable, Hashable, Sendable {
        public let type: PostV1ProductionOrdersCreateRequestType?
        public let bomId: String
        public let warehouseId: String
        public let quantity: String
        public let date: String
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            type: PostV1ProductionOrdersCreateRequestType? = nil,
            bomId: String,
            warehouseId: String,
            quantity: String,
            date: String,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.type = type
            self.bomId = bomId
            self.warehouseId = warehouseId
            self.quantity = quantity
            self.date = date
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.type = try container.decodeIfPresent(PostV1ProductionOrdersCreateRequestType.self, forKey: .type)
            self.bomId = try container.decode(String.self, forKey: .bomId)
            self.warehouseId = try container.decode(String.self, forKey: .warehouseId)
            self.quantity = try container.decode(String.self, forKey: .quantity)
            self.date = try container.decode(String.self, forKey: .date)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encode(self.bomId, forKey: .bomId)
            try container.encode(self.warehouseId, forKey: .warehouseId)
            try container.encode(self.quantity, forKey: .quantity)
            try container.encode(self.date, forKey: .date)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case bomId
            case warehouseId
            case quantity
            case date
            case notes
        }
    }
}