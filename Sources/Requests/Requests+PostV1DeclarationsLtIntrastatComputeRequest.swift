import Foundation

extension Requests {
    public struct PostV1DeclarationsLtIntrastatComputeRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let month: Int64
        public let flow: PostV1DeclarationsLtIntrastatComputeRequestFlow
        public let transactionNature: String?
        public let deliveryTerms: String?
        public let transportMode: PostV1DeclarationsLtIntrastatComputeRequestTransportMode?
        public let regionCode: String?
        public let statisticalValueRequired: Bool?
        public let preparationTimeHours: Int64?
        public let preparationTimeMinutes: Int64?
        public let persist: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            month: Int64,
            flow: PostV1DeclarationsLtIntrastatComputeRequestFlow,
            transactionNature: String? = nil,
            deliveryTerms: String? = nil,
            transportMode: PostV1DeclarationsLtIntrastatComputeRequestTransportMode? = nil,
            regionCode: String? = nil,
            statisticalValueRequired: Bool? = nil,
            preparationTimeHours: Int64? = nil,
            preparationTimeMinutes: Int64? = nil,
            persist: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.month = month
            self.flow = flow
            self.transactionNature = transactionNature
            self.deliveryTerms = deliveryTerms
            self.transportMode = transportMode
            self.regionCode = regionCode
            self.statisticalValueRequired = statisticalValueRequired
            self.preparationTimeHours = preparationTimeHours
            self.preparationTimeMinutes = preparationTimeMinutes
            self.persist = persist
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decode(Int64.self, forKey: .month)
            self.flow = try container.decode(PostV1DeclarationsLtIntrastatComputeRequestFlow.self, forKey: .flow)
            self.transactionNature = try container.decodeIfPresent(String.self, forKey: .transactionNature)
            self.deliveryTerms = try container.decodeIfPresent(String.self, forKey: .deliveryTerms)
            self.transportMode = try container.decodeIfPresent(PostV1DeclarationsLtIntrastatComputeRequestTransportMode.self, forKey: .transportMode)
            self.regionCode = try container.decodeIfPresent(String.self, forKey: .regionCode)
            self.statisticalValueRequired = try container.decodeIfPresent(Bool.self, forKey: .statisticalValueRequired)
            self.preparationTimeHours = try container.decodeIfPresent(Int64.self, forKey: .preparationTimeHours)
            self.preparationTimeMinutes = try container.decodeIfPresent(Int64.self, forKey: .preparationTimeMinutes)
            self.persist = try container.decodeIfPresent(Bool.self, forKey: .persist)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.month, forKey: .month)
            try container.encode(self.flow, forKey: .flow)
            try container.encodeIfPresent(self.transactionNature, forKey: .transactionNature)
            try container.encodeIfPresent(self.deliveryTerms, forKey: .deliveryTerms)
            try container.encodeIfPresent(self.transportMode, forKey: .transportMode)
            try container.encodeIfPresent(self.regionCode, forKey: .regionCode)
            try container.encodeIfPresent(self.statisticalValueRequired, forKey: .statisticalValueRequired)
            try container.encodeIfPresent(self.preparationTimeHours, forKey: .preparationTimeHours)
            try container.encodeIfPresent(self.preparationTimeMinutes, forKey: .preparationTimeMinutes)
            try container.encodeIfPresent(self.persist, forKey: .persist)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case month
            case flow
            case transactionNature
            case deliveryTerms
            case transportMode
            case regionCode
            case statisticalValueRequired
            case preparationTimeHours
            case preparationTimeMinutes
            case persist
        }
    }
}