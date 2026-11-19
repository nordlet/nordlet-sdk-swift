import Foundation

extension Requests {
    public struct MandatesCreateBankRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let iban: String?
        public let bic: String?
        /// Sort code (Bacs) or routing number (ACH), for a mandate without an IBAN
        public let bankCode: String?
        /// Account number, for a mandate without an IBAN
        public let bankAccountNumber: String?
        /// Checking or savings account; a US ACH file needs it
        public let accountType: MandatesCreateBankRequestAccountType?
        public let scheme: MandatesCreateBankRequestScheme?
        public let sequenceType: MandatesCreateBankRequestSequenceType?
        public let signatureDate: CalendarDate
        public let reference: String?
        public let debtorName: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            iban: String? = nil,
            bic: String? = nil,
            bankCode: String? = nil,
            bankAccountNumber: String? = nil,
            accountType: MandatesCreateBankRequestAccountType? = nil,
            scheme: MandatesCreateBankRequestScheme? = nil,
            sequenceType: MandatesCreateBankRequestSequenceType? = nil,
            signatureDate: CalendarDate,
            reference: String? = nil,
            debtorName: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.iban = iban
            self.bic = bic
            self.bankCode = bankCode
            self.bankAccountNumber = bankAccountNumber
            self.accountType = accountType
            self.scheme = scheme
            self.sequenceType = sequenceType
            self.signatureDate = signatureDate
            self.reference = reference
            self.debtorName = debtorName
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.bic = try container.decodeIfPresent(String.self, forKey: .bic)
            self.bankCode = try container.decodeIfPresent(String.self, forKey: .bankCode)
            self.bankAccountNumber = try container.decodeIfPresent(String.self, forKey: .bankAccountNumber)
            self.accountType = try container.decodeIfPresent(MandatesCreateBankRequestAccountType.self, forKey: .accountType)
            self.scheme = try container.decodeIfPresent(MandatesCreateBankRequestScheme.self, forKey: .scheme)
            self.sequenceType = try container.decodeIfPresent(MandatesCreateBankRequestSequenceType.self, forKey: .sequenceType)
            self.signatureDate = try container.decode(CalendarDate.self, forKey: .signatureDate)
            self.reference = try container.decodeIfPresent(String.self, forKey: .reference)
            self.debtorName = try container.decodeIfPresent(String.self, forKey: .debtorName)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.bic, forKey: .bic)
            try container.encodeIfPresent(self.bankCode, forKey: .bankCode)
            try container.encodeIfPresent(self.bankAccountNumber, forKey: .bankAccountNumber)
            try container.encodeIfPresent(self.accountType, forKey: .accountType)
            try container.encodeIfPresent(self.scheme, forKey: .scheme)
            try container.encodeIfPresent(self.sequenceType, forKey: .sequenceType)
            try container.encode(self.signatureDate, forKey: .signatureDate)
            try container.encodeIfPresent(self.reference, forKey: .reference)
            try container.encodeIfPresent(self.debtorName, forKey: .debtorName)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case iban
            case bic
            case bankCode
            case bankAccountNumber
            case accountType
            case scheme
            case sequenceType
            case signatureDate
            case reference
            case debtorName
            case notes
        }
    }
}