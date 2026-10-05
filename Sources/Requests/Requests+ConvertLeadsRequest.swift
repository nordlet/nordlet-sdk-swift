import Foundation

extension Requests {
    public struct ConvertLeadsRequest: Codable, Hashable, Sendable {
        public let id: String
        public let partnerType: ConvertLeadsRequestPartnerType?
        public let code: String?
        public let vatCode: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            partnerType: ConvertLeadsRequestPartnerType? = nil,
            code: String? = nil,
            vatCode: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.partnerType = partnerType
            self.code = code
            self.vatCode = vatCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.partnerType = try container.decodeIfPresent(ConvertLeadsRequestPartnerType.self, forKey: .partnerType)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.vatCode = try container.decodeIfPresent(String.self, forKey: .vatCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.partnerType, forKey: .partnerType)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.vatCode, forKey: .vatCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case partnerType
            case code
            case vatCode
        }
    }
}