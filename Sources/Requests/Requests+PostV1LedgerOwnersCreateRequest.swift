import Foundation

extension Requests {
    public struct PostV1LedgerOwnersCreateRequest: Codable, Hashable, Sendable {
        public let name: String
        public let code: String?
        public let equityAccountCode: String?
        public let sharesQuantity: String?
        public let sharesAmount: String?
        public let sharesType: PostV1LedgerOwnersCreateRequestSharesType?
        public let sharesAcquisitionDate: String?
        public let address: PostV1LedgerOwnersCreateRequestAddress?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String,
            code: String? = nil,
            equityAccountCode: String? = nil,
            sharesQuantity: String? = nil,
            sharesAmount: String? = nil,
            sharesType: PostV1LedgerOwnersCreateRequestSharesType? = nil,
            sharesAcquisitionDate: String? = nil,
            address: PostV1LedgerOwnersCreateRequestAddress? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.code = code
            self.equityAccountCode = equityAccountCode
            self.sharesQuantity = sharesQuantity
            self.sharesAmount = sharesAmount
            self.sharesType = sharesType
            self.sharesAcquisitionDate = sharesAcquisitionDate
            self.address = address
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decode(String.self, forKey: .name)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.equityAccountCode = try container.decodeIfPresent(String.self, forKey: .equityAccountCode)
            self.sharesQuantity = try container.decodeIfPresent(String.self, forKey: .sharesQuantity)
            self.sharesAmount = try container.decodeIfPresent(String.self, forKey: .sharesAmount)
            self.sharesType = try container.decodeIfPresent(PostV1LedgerOwnersCreateRequestSharesType.self, forKey: .sharesType)
            self.sharesAcquisitionDate = try container.decodeIfPresent(String.self, forKey: .sharesAcquisitionDate)
            self.address = try container.decodeIfPresent(PostV1LedgerOwnersCreateRequestAddress.self, forKey: .address)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.equityAccountCode, forKey: .equityAccountCode)
            try container.encodeIfPresent(self.sharesQuantity, forKey: .sharesQuantity)
            try container.encodeIfPresent(self.sharesAmount, forKey: .sharesAmount)
            try container.encodeIfPresent(self.sharesType, forKey: .sharesType)
            try container.encodeIfPresent(self.sharesAcquisitionDate, forKey: .sharesAcquisitionDate)
            try container.encodeIfPresent(self.address, forKey: .address)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case code
            case equityAccountCode
            case sharesQuantity
            case sharesAmount
            case sharesType
            case sharesAcquisitionDate
            case address
        }
    }
}