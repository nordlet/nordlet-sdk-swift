import Foundation

extension Requests {
    public struct TopupCreateBillingRequest: Codable, Hashable, Sendable {
        public let amountCents: Int64
        public let locale: TopupCreateBillingRequestLocale?
        public let returnTo: TopupCreateBillingRequestReturnTo?
        public let convertCompanyId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            amountCents: Int64,
            locale: TopupCreateBillingRequestLocale? = nil,
            returnTo: TopupCreateBillingRequestReturnTo? = nil,
            convertCompanyId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.amountCents = amountCents
            self.locale = locale
            self.returnTo = returnTo
            self.convertCompanyId = convertCompanyId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.amountCents = try container.decode(Int64.self, forKey: .amountCents)
            self.locale = try container.decodeIfPresent(TopupCreateBillingRequestLocale.self, forKey: .locale)
            self.returnTo = try container.decodeIfPresent(TopupCreateBillingRequestReturnTo.self, forKey: .returnTo)
            self.convertCompanyId = try container.decodeIfPresent(String.self, forKey: .convertCompanyId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.amountCents, forKey: .amountCents)
            try container.encodeIfPresent(self.locale, forKey: .locale)
            try container.encodeIfPresent(self.returnTo, forKey: .returnTo)
            try container.encodeIfPresent(self.convertCompanyId, forKey: .convertCompanyId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case amountCents
            case locale
            case returnTo
            case convertCompanyId
        }
    }
}