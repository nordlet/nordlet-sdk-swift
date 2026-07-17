import Foundation

extension Requests {
    public struct PostV1PosReportsCreateRequest: Codable, Hashable, Sendable {
        public let reportNumber: String
        public let date: String
        public let deviceId: String?
        public let warehouseId: String?
        public let vatLines: [PostV1PosReportsCreateRequestVatLinesItem]
        public let cashAmount: String?
        public let cardAmount: String?
        public let itemLines: [PostV1PosReportsCreateRequestItemLinesItem]?
        public let cashAccountCode: String?
        public let cardAccountCode: String?
        public let revenueAccountCode: String?
        public let vatAccountCode: String?
        public let cogsAccountCode: String?
        public let inventoryAccountCode: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            reportNumber: String,
            date: String,
            deviceId: String? = nil,
            warehouseId: String? = nil,
            vatLines: [PostV1PosReportsCreateRequestVatLinesItem],
            cashAmount: String? = nil,
            cardAmount: String? = nil,
            itemLines: [PostV1PosReportsCreateRequestItemLinesItem]? = nil,
            cashAccountCode: String? = nil,
            cardAccountCode: String? = nil,
            revenueAccountCode: String? = nil,
            vatAccountCode: String? = nil,
            cogsAccountCode: String? = nil,
            inventoryAccountCode: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.reportNumber = reportNumber
            self.date = date
            self.deviceId = deviceId
            self.warehouseId = warehouseId
            self.vatLines = vatLines
            self.cashAmount = cashAmount
            self.cardAmount = cardAmount
            self.itemLines = itemLines
            self.cashAccountCode = cashAccountCode
            self.cardAccountCode = cardAccountCode
            self.revenueAccountCode = revenueAccountCode
            self.vatAccountCode = vatAccountCode
            self.cogsAccountCode = cogsAccountCode
            self.inventoryAccountCode = inventoryAccountCode
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.reportNumber = try container.decode(String.self, forKey: .reportNumber)
            self.date = try container.decode(String.self, forKey: .date)
            self.deviceId = try container.decodeIfPresent(String.self, forKey: .deviceId)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.vatLines = try container.decode([PostV1PosReportsCreateRequestVatLinesItem].self, forKey: .vatLines)
            self.cashAmount = try container.decodeIfPresent(String.self, forKey: .cashAmount)
            self.cardAmount = try container.decodeIfPresent(String.self, forKey: .cardAmount)
            self.itemLines = try container.decodeIfPresent([PostV1PosReportsCreateRequestItemLinesItem].self, forKey: .itemLines)
            self.cashAccountCode = try container.decodeIfPresent(String.self, forKey: .cashAccountCode)
            self.cardAccountCode = try container.decodeIfPresent(String.self, forKey: .cardAccountCode)
            self.revenueAccountCode = try container.decodeIfPresent(String.self, forKey: .revenueAccountCode)
            self.vatAccountCode = try container.decodeIfPresent(String.self, forKey: .vatAccountCode)
            self.cogsAccountCode = try container.decodeIfPresent(String.self, forKey: .cogsAccountCode)
            self.inventoryAccountCode = try container.decodeIfPresent(String.self, forKey: .inventoryAccountCode)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.reportNumber, forKey: .reportNumber)
            try container.encode(self.date, forKey: .date)
            try container.encodeIfPresent(self.deviceId, forKey: .deviceId)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encode(self.vatLines, forKey: .vatLines)
            try container.encodeIfPresent(self.cashAmount, forKey: .cashAmount)
            try container.encodeIfPresent(self.cardAmount, forKey: .cardAmount)
            try container.encodeIfPresent(self.itemLines, forKey: .itemLines)
            try container.encodeIfPresent(self.cashAccountCode, forKey: .cashAccountCode)
            try container.encodeIfPresent(self.cardAccountCode, forKey: .cardAccountCode)
            try container.encodeIfPresent(self.revenueAccountCode, forKey: .revenueAccountCode)
            try container.encodeIfPresent(self.vatAccountCode, forKey: .vatAccountCode)
            try container.encodeIfPresent(self.cogsAccountCode, forKey: .cogsAccountCode)
            try container.encodeIfPresent(self.inventoryAccountCode, forKey: .inventoryAccountCode)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case reportNumber
            case date
            case deviceId
            case warehouseId
            case vatLines
            case cashAmount
            case cardAmount
            case itemLines
            case cashAccountCode
            case cardAccountCode
            case revenueAccountCode
            case vatAccountCode
            case cogsAccountCode
            case inventoryAccountCode
            case notes
        }
    }
}