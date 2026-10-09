import Foundation

extension Requests {
    public struct InvoicesIssueSalesRequest: Codable, Hashable, Sendable {
        public let id: String
        public let series: String?
        public let issueDate: CalendarDate?
        public let warehouseId: String?
        public let returnToStock: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            series: String? = nil,
            issueDate: CalendarDate? = nil,
            warehouseId: String? = nil,
            returnToStock: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.series = series
            self.issueDate = issueDate
            self.warehouseId = warehouseId
            self.returnToStock = returnToStock
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.series = try container.decodeIfPresent(String.self, forKey: .series)
            self.issueDate = try container.decodeIfPresent(CalendarDate.self, forKey: .issueDate)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.returnToStock = try container.decodeIfPresent(Bool.self, forKey: .returnToStock)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.series, forKey: .series)
            try container.encodeIfPresent(self.issueDate, forKey: .issueDate)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encodeIfPresent(self.returnToStock, forKey: .returnToStock)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case series
            case issueDate
            case warehouseId
            case returnToStock
        }
    }
}