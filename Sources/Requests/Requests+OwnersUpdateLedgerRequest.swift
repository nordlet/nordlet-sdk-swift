import Foundation

extension Requests {
    public struct OwnersUpdateLedgerRequest: Codable, Hashable, Sendable {
        public let id: String
        public let name: String?
        public let code: Nullable<String>?
        public let equityAccountCode: String?
        public let sharesQuantity: Nullable<String>?
        public let sharesAmount: Nullable<String>?
        public let sharesType: Nullable<OwnersUpdateLedgerRequestSharesType>?
        public let sharesAcquisitionDate: Nullable<CalendarDate>?
        public let withholdingTaxPercent: Nullable<String>?
        public let partnerLiability: Nullable<OwnersUpdateLedgerRequestPartnerLiability>?
        public let specialBalanceRequired: Nullable<Bool>?
        public let supplementaryBalanceRequired: Nullable<Bool>?
        public let address: Nullable<OwnersUpdateLedgerRequestAddress>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            name: String? = nil,
            code: Nullable<String>? = nil,
            equityAccountCode: String? = nil,
            sharesQuantity: Nullable<String>? = nil,
            sharesAmount: Nullable<String>? = nil,
            sharesType: Nullable<OwnersUpdateLedgerRequestSharesType>? = nil,
            sharesAcquisitionDate: Nullable<CalendarDate>? = nil,
            withholdingTaxPercent: Nullable<String>? = nil,
            partnerLiability: Nullable<OwnersUpdateLedgerRequestPartnerLiability>? = nil,
            specialBalanceRequired: Nullable<Bool>? = nil,
            supplementaryBalanceRequired: Nullable<Bool>? = nil,
            address: Nullable<OwnersUpdateLedgerRequestAddress>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.name = name
            self.code = code
            self.equityAccountCode = equityAccountCode
            self.sharesQuantity = sharesQuantity
            self.sharesAmount = sharesAmount
            self.sharesType = sharesType
            self.sharesAcquisitionDate = sharesAcquisitionDate
            self.withholdingTaxPercent = withholdingTaxPercent
            self.partnerLiability = partnerLiability
            self.specialBalanceRequired = specialBalanceRequired
            self.supplementaryBalanceRequired = supplementaryBalanceRequired
            self.address = address
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.code = try container.decodeNullableIfPresent(String.self, forKey: .code)
            self.equityAccountCode = try container.decodeIfPresent(String.self, forKey: .equityAccountCode)
            self.sharesQuantity = try container.decodeNullableIfPresent(String.self, forKey: .sharesQuantity)
            self.sharesAmount = try container.decodeNullableIfPresent(String.self, forKey: .sharesAmount)
            self.sharesType = try container.decodeNullableIfPresent(OwnersUpdateLedgerRequestSharesType.self, forKey: .sharesType)
            self.sharesAcquisitionDate = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .sharesAcquisitionDate)
            self.withholdingTaxPercent = try container.decodeNullableIfPresent(String.self, forKey: .withholdingTaxPercent)
            self.partnerLiability = try container.decodeNullableIfPresent(OwnersUpdateLedgerRequestPartnerLiability.self, forKey: .partnerLiability)
            self.specialBalanceRequired = try container.decodeNullableIfPresent(Bool.self, forKey: .specialBalanceRequired)
            self.supplementaryBalanceRequired = try container.decodeNullableIfPresent(Bool.self, forKey: .supplementaryBalanceRequired)
            self.address = try container.decodeNullableIfPresent(OwnersUpdateLedgerRequestAddress.self, forKey: .address)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.equityAccountCode, forKey: .equityAccountCode)
            try container.encodeNullableIfPresent(self.sharesQuantity, forKey: .sharesQuantity)
            try container.encodeNullableIfPresent(self.sharesAmount, forKey: .sharesAmount)
            try container.encodeNullableIfPresent(self.sharesType, forKey: .sharesType)
            try container.encodeNullableIfPresent(self.sharesAcquisitionDate, forKey: .sharesAcquisitionDate)
            try container.encodeNullableIfPresent(self.withholdingTaxPercent, forKey: .withholdingTaxPercent)
            try container.encodeNullableIfPresent(self.partnerLiability, forKey: .partnerLiability)
            try container.encodeNullableIfPresent(self.specialBalanceRequired, forKey: .specialBalanceRequired)
            try container.encodeNullableIfPresent(self.supplementaryBalanceRequired, forKey: .supplementaryBalanceRequired)
            try container.encodeNullableIfPresent(self.address, forKey: .address)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case name
            case code
            case equityAccountCode
            case sharesQuantity
            case sharesAmount
            case sharesType
            case sharesAcquisitionDate
            case withholdingTaxPercent
            case partnerLiability
            case specialBalanceRequired
            case supplementaryBalanceRequired
            case address
        }
    }
}