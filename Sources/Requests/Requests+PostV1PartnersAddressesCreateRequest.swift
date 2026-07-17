import Foundation

extension Requests {
    public struct PostV1PartnersAddressesCreateRequest: Codable, Hashable, Sendable {
        public let type: PostV1PartnersAddressesCreateRequestType?
        public let street: String?
        public let city: String?
        public let postalCode: String?
        public let countryCode: String?
        public let isDefault: Bool?
        public let partnerId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            type: PostV1PartnersAddressesCreateRequestType? = nil,
            street: String? = nil,
            city: String? = nil,
            postalCode: String? = nil,
            countryCode: String? = nil,
            isDefault: Bool? = nil,
            partnerId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.type = type
            self.street = street
            self.city = city
            self.postalCode = postalCode
            self.countryCode = countryCode
            self.isDefault = isDefault
            self.partnerId = partnerId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.type = try container.decodeIfPresent(PostV1PartnersAddressesCreateRequestType.self, forKey: .type)
            self.street = try container.decodeIfPresent(String.self, forKey: .street)
            self.city = try container.decodeIfPresent(String.self, forKey: .city)
            self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
            self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
            self.isDefault = try container.decodeIfPresent(Bool.self, forKey: .isDefault)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.street, forKey: .street)
            try container.encodeIfPresent(self.city, forKey: .city)
            try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
            try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
            try container.encodeIfPresent(self.isDefault, forKey: .isDefault)
            try container.encode(self.partnerId, forKey: .partnerId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case street
            case city
            case postalCode
            case countryCode
            case isDefault
            case partnerId
        }
    }
}