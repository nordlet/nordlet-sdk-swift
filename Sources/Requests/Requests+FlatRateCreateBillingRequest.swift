import Foundation

extension Requests {
    public struct FlatRateCreateBillingRequest: Codable, Hashable, Sendable {
        public let locale: FlatRateCreateBillingRequestLocale?
        public let plan: FlatRateCreateBillingRequestPlan?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            locale: FlatRateCreateBillingRequestLocale? = nil,
            plan: FlatRateCreateBillingRequestPlan? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.locale = locale
            self.plan = plan
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.locale = try container.decodeIfPresent(FlatRateCreateBillingRequestLocale.self, forKey: .locale)
            self.plan = try container.decodeIfPresent(FlatRateCreateBillingRequestPlan.self, forKey: .plan)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.locale, forKey: .locale)
            try container.encodeIfPresent(self.plan, forKey: .plan)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case locale
            case plan
        }
    }
}