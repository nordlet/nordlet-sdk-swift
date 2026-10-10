import Foundation

extension Requests {
    public struct InvoicesRegisterPurchasesRequest: Codable, Hashable, Sendable {
        public let id: String
        public let registrationDate: CalendarDate?
        public let warehouseId: String?
        public let returnFromStock: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            registrationDate: CalendarDate? = nil,
            warehouseId: String? = nil,
            returnFromStock: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.registrationDate = registrationDate
            self.warehouseId = warehouseId
            self.returnFromStock = returnFromStock
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.registrationDate = try container.decodeIfPresent(CalendarDate.self, forKey: .registrationDate)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.returnFromStock = try container.decodeIfPresent(Bool.self, forKey: .returnFromStock)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.registrationDate, forKey: .registrationDate)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encodeIfPresent(self.returnFromStock, forKey: .returnFromStock)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case registrationDate
            case warehouseId
            case returnFromStock
        }
    }
}