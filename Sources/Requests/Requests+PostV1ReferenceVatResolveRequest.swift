import Foundation

extension Requests {
    public struct PostV1ReferenceVatResolveRequest: Codable, Hashable, Sendable {
        public let partnerId: String?
        public let customerCountryCode: String?
        public let customerIsBusiness: Bool?
        public let supplyType: PostV1ReferenceVatResolveRequestSupplyType?
        public let date: String?
        public let belowDistanceSalesThreshold: Bool?
        public let facilitatedByMarketplace: Bool?
        public let actingAsMarketplace: Bool?
        public let sellerEstablishedInEu: Bool?
        public let importedConsignmentValueEur: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String? = nil,
            customerCountryCode: String? = nil,
            customerIsBusiness: Bool? = nil,
            supplyType: PostV1ReferenceVatResolveRequestSupplyType? = nil,
            date: String? = nil,
            belowDistanceSalesThreshold: Bool? = nil,
            facilitatedByMarketplace: Bool? = nil,
            actingAsMarketplace: Bool? = nil,
            sellerEstablishedInEu: Bool? = nil,
            importedConsignmentValueEur: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.customerCountryCode = customerCountryCode
            self.customerIsBusiness = customerIsBusiness
            self.supplyType = supplyType
            self.date = date
            self.belowDistanceSalesThreshold = belowDistanceSalesThreshold
            self.facilitatedByMarketplace = facilitatedByMarketplace
            self.actingAsMarketplace = actingAsMarketplace
            self.sellerEstablishedInEu = sellerEstablishedInEu
            self.importedConsignmentValueEur = importedConsignmentValueEur
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.customerCountryCode = try container.decodeIfPresent(String.self, forKey: .customerCountryCode)
            self.customerIsBusiness = try container.decodeIfPresent(Bool.self, forKey: .customerIsBusiness)
            self.supplyType = try container.decodeIfPresent(PostV1ReferenceVatResolveRequestSupplyType.self, forKey: .supplyType)
            self.date = try container.decodeIfPresent(String.self, forKey: .date)
            self.belowDistanceSalesThreshold = try container.decodeIfPresent(Bool.self, forKey: .belowDistanceSalesThreshold)
            self.facilitatedByMarketplace = try container.decodeIfPresent(Bool.self, forKey: .facilitatedByMarketplace)
            self.actingAsMarketplace = try container.decodeIfPresent(Bool.self, forKey: .actingAsMarketplace)
            self.sellerEstablishedInEu = try container.decodeIfPresent(Bool.self, forKey: .sellerEstablishedInEu)
            self.importedConsignmentValueEur = try container.decodeIfPresent(String.self, forKey: .importedConsignmentValueEur)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.customerCountryCode, forKey: .customerCountryCode)
            try container.encodeIfPresent(self.customerIsBusiness, forKey: .customerIsBusiness)
            try container.encodeIfPresent(self.supplyType, forKey: .supplyType)
            try container.encodeIfPresent(self.date, forKey: .date)
            try container.encodeIfPresent(self.belowDistanceSalesThreshold, forKey: .belowDistanceSalesThreshold)
            try container.encodeIfPresent(self.facilitatedByMarketplace, forKey: .facilitatedByMarketplace)
            try container.encodeIfPresent(self.actingAsMarketplace, forKey: .actingAsMarketplace)
            try container.encodeIfPresent(self.sellerEstablishedInEu, forKey: .sellerEstablishedInEu)
            try container.encodeIfPresent(self.importedConsignmentValueEur, forKey: .importedConsignmentValueEur)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case customerCountryCode
            case customerIsBusiness
            case supplyType
            case date
            case belowDistanceSalesThreshold
            case facilitatedByMarketplace
            case actingAsMarketplace
            case sellerEstablishedInEu
            case importedConsignmentValueEur
        }
    }
}