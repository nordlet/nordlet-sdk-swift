import Foundation

extension Requests {
    public struct PostV1BillingTopupCreateRequest: Codable, Hashable, Sendable {
        public let amountCents: Int64
        public let locale: PostV1BillingTopupCreateRequestLocale?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            amountCents: Int64,
            locale: PostV1BillingTopupCreateRequestLocale? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.amountCents = amountCents
            self.locale = locale
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.amountCents = try container.decode(Int64.self, forKey: .amountCents)
            self.locale = try container.decodeIfPresent(PostV1BillingTopupCreateRequestLocale.self, forKey: .locale)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.amountCents, forKey: .amountCents)
            try container.encodeIfPresent(self.locale, forKey: .locale)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case amountCents
            case locale
        }
    }
}