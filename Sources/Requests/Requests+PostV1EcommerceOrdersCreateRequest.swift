import Foundation

extension Requests {
    public struct PostV1EcommerceOrdersCreateRequest: Codable, Hashable, Sendable {
        public let channel: String?
        public let externalRef: String?
        public let partnerId: String?
        public let partner: PostV1EcommerceOrdersCreateRequestPartner?
        public let warehouseId: String?
        public let currency: String?
        public let shipToCountryCode: String?
        public let marketplace: String?
        public let notes: String?
        public let lines: [PostV1EcommerceOrdersCreateRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            channel: String? = nil,
            externalRef: String? = nil,
            partnerId: String? = nil,
            partner: PostV1EcommerceOrdersCreateRequestPartner? = nil,
            warehouseId: String? = nil,
            currency: String? = nil,
            shipToCountryCode: String? = nil,
            marketplace: String? = nil,
            notes: String? = nil,
            lines: [PostV1EcommerceOrdersCreateRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.channel = channel
            self.externalRef = externalRef
            self.partnerId = partnerId
            self.partner = partner
            self.warehouseId = warehouseId
            self.currency = currency
            self.shipToCountryCode = shipToCountryCode
            self.marketplace = marketplace
            self.notes = notes
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.channel = try container.decodeIfPresent(String.self, forKey: .channel)
            self.externalRef = try container.decodeIfPresent(String.self, forKey: .externalRef)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.partner = try container.decodeIfPresent(PostV1EcommerceOrdersCreateRequestPartner.self, forKey: .partner)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.shipToCountryCode = try container.decodeIfPresent(String.self, forKey: .shipToCountryCode)
            self.marketplace = try container.decodeIfPresent(String.self, forKey: .marketplace)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.lines = try container.decode([PostV1EcommerceOrdersCreateRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.channel, forKey: .channel)
            try container.encodeIfPresent(self.externalRef, forKey: .externalRef)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.partner, forKey: .partner)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.shipToCountryCode, forKey: .shipToCountryCode)
            try container.encodeIfPresent(self.marketplace, forKey: .marketplace)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case channel
            case externalRef
            case partnerId
            case partner
            case warehouseId
            case currency
            case shipToCountryCode
            case marketplace
            case notes
            case lines
        }
    }
}