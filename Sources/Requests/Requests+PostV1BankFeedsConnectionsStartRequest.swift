import Foundation

extension Requests {
    public struct PostV1BankFeedsConnectionsStartRequest: Codable, Hashable, Sendable {
        public let aspspName: String
        public let aspspCountry: String
        public let psuType: PostV1BankFeedsConnectionsStartRequestPsuType?
        public let redirectUrl: String?
        public let validForDays: Int64?
        public let language: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            aspspName: String,
            aspspCountry: String,
            psuType: PostV1BankFeedsConnectionsStartRequestPsuType? = nil,
            redirectUrl: String? = nil,
            validForDays: Int64? = nil,
            language: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.aspspName = aspspName
            self.aspspCountry = aspspCountry
            self.psuType = psuType
            self.redirectUrl = redirectUrl
            self.validForDays = validForDays
            self.language = language
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.aspspName = try container.decode(String.self, forKey: .aspspName)
            self.aspspCountry = try container.decode(String.self, forKey: .aspspCountry)
            self.psuType = try container.decodeIfPresent(PostV1BankFeedsConnectionsStartRequestPsuType.self, forKey: .psuType)
            self.redirectUrl = try container.decodeIfPresent(String.self, forKey: .redirectUrl)
            self.validForDays = try container.decodeIfPresent(Int64.self, forKey: .validForDays)
            self.language = try container.decodeIfPresent(String.self, forKey: .language)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.aspspName, forKey: .aspspName)
            try container.encode(self.aspspCountry, forKey: .aspspCountry)
            try container.encodeIfPresent(self.psuType, forKey: .psuType)
            try container.encodeIfPresent(self.redirectUrl, forKey: .redirectUrl)
            try container.encodeIfPresent(self.validForDays, forKey: .validForDays)
            try container.encodeIfPresent(self.language, forKey: .language)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case aspspName
            case aspspCountry
            case psuType
            case redirectUrl
            case validForDays
            case language
        }
    }
}