import Foundation

extension Requests {
    public struct PostV1PurchasesReceiptsCreateRequest: Codable, Hashable, Sendable {
        public let orderId: String
        public let receiptDate: String
        public let warehouseId: String?
        public let notes: String?
        public let lines: [PostV1PurchasesReceiptsCreateRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderId: String,
            receiptDate: String,
            warehouseId: String? = nil,
            notes: String? = nil,
            lines: [PostV1PurchasesReceiptsCreateRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderId = orderId
            self.receiptDate = receiptDate
            self.warehouseId = warehouseId
            self.notes = notes
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.receiptDate = try container.decode(String.self, forKey: .receiptDate)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.lines = try container.decode([PostV1PurchasesReceiptsCreateRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encode(self.receiptDate, forKey: .receiptDate)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderId
            case receiptDate
            case warehouseId
            case notes
            case lines
        }
    }
}