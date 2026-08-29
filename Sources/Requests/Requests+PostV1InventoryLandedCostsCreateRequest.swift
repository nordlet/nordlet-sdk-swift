import Foundation

extension Requests {
    public struct PostV1InventoryLandedCostsCreateRequest: Codable, Hashable, Sendable {
        public let date: String
        public let amount: String
        public let method: PostV1InventoryLandedCostsCreateRequestMethod?
        public let goodsReceiptId: String?
        public let movementIds: [String]?
        public let sourceInvoiceId: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            date: String,
            amount: String,
            method: PostV1InventoryLandedCostsCreateRequestMethod? = nil,
            goodsReceiptId: String? = nil,
            movementIds: [String]? = nil,
            sourceInvoiceId: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.date = date
            self.amount = amount
            self.method = method
            self.goodsReceiptId = goodsReceiptId
            self.movementIds = movementIds
            self.sourceInvoiceId = sourceInvoiceId
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.date = try container.decode(String.self, forKey: .date)
            self.amount = try container.decode(String.self, forKey: .amount)
            self.method = try container.decodeIfPresent(PostV1InventoryLandedCostsCreateRequestMethod.self, forKey: .method)
            self.goodsReceiptId = try container.decodeIfPresent(String.self, forKey: .goodsReceiptId)
            self.movementIds = try container.decodeIfPresent([String].self, forKey: .movementIds)
            self.sourceInvoiceId = try container.decodeIfPresent(String.self, forKey: .sourceInvoiceId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.amount, forKey: .amount)
            try container.encodeIfPresent(self.method, forKey: .method)
            try container.encodeIfPresent(self.goodsReceiptId, forKey: .goodsReceiptId)
            try container.encodeIfPresent(self.movementIds, forKey: .movementIds)
            try container.encodeIfPresent(self.sourceInvoiceId, forKey: .sourceInvoiceId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case date
            case amount
            case method
            case goodsReceiptId
            case movementIds
            case sourceInvoiceId
            case notes
        }
    }
}