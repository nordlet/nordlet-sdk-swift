import Foundation

public struct MandatesCancelBankResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let reference: String
    public let scheme: MandatesCancelBankResponseScheme
    public let sequenceType: MandatesCancelBankResponseSequenceType
    public let status: MandatesCancelBankResponseStatus
    public let debtorName: String
    public let iban: Nullable<String>
    public let bic: Nullable<String>
    public let bankCode: Nullable<String>
    public let bankAccountNumber: Nullable<String>
    /// Checking or savings account; a US ACH file needs it
    public let accountType: Nullable<MandatesCancelBankResponseAccountType>
    public let signatureDate: CalendarDate
    public let collectionsCount: Int64
    public let lastCollectionDate: Nullable<CalendarDate>
    public let expiresOn: Nullable<String>
    public let lodgedOn: Nullable<String>
    public let cancellationLodgedOn: Nullable<String>
    public let cancelledAt: Nullable<Date>
    public let notes: Nullable<String>
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        reference: String,
        scheme: MandatesCancelBankResponseScheme,
        sequenceType: MandatesCancelBankResponseSequenceType,
        status: MandatesCancelBankResponseStatus,
        debtorName: String,
        iban: Nullable<String>,
        bic: Nullable<String>,
        bankCode: Nullable<String>,
        bankAccountNumber: Nullable<String>,
        accountType: Nullable<MandatesCancelBankResponseAccountType>,
        signatureDate: CalendarDate,
        collectionsCount: Int64,
        lastCollectionDate: Nullable<CalendarDate>,
        expiresOn: Nullable<String>,
        lodgedOn: Nullable<String>,
        cancellationLodgedOn: Nullable<String>,
        cancelledAt: Nullable<Date>,
        notes: Nullable<String>,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.reference = reference
        self.scheme = scheme
        self.sequenceType = sequenceType
        self.status = status
        self.debtorName = debtorName
        self.iban = iban
        self.bic = bic
        self.bankCode = bankCode
        self.bankAccountNumber = bankAccountNumber
        self.accountType = accountType
        self.signatureDate = signatureDate
        self.collectionsCount = collectionsCount
        self.lastCollectionDate = lastCollectionDate
        self.expiresOn = expiresOn
        self.lodgedOn = lodgedOn
        self.cancellationLodgedOn = cancellationLodgedOn
        self.cancelledAt = cancelledAt
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.reference = try container.decode(String.self, forKey: .reference)
        self.scheme = try container.decode(MandatesCancelBankResponseScheme.self, forKey: .scheme)
        self.sequenceType = try container.decode(MandatesCancelBankResponseSequenceType.self, forKey: .sequenceType)
        self.status = try container.decode(MandatesCancelBankResponseStatus.self, forKey: .status)
        self.debtorName = try container.decode(String.self, forKey: .debtorName)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.bic = try container.decode(Nullable<String>.self, forKey: .bic)
        self.bankCode = try container.decode(Nullable<String>.self, forKey: .bankCode)
        self.bankAccountNumber = try container.decode(Nullable<String>.self, forKey: .bankAccountNumber)
        self.accountType = try container.decode(Nullable<MandatesCancelBankResponseAccountType>.self, forKey: .accountType)
        self.signatureDate = try container.decode(CalendarDate.self, forKey: .signatureDate)
        self.collectionsCount = try container.decode(Int64.self, forKey: .collectionsCount)
        self.lastCollectionDate = try container.decode(Nullable<CalendarDate>.self, forKey: .lastCollectionDate)
        self.expiresOn = try container.decode(Nullable<String>.self, forKey: .expiresOn)
        self.lodgedOn = try container.decode(Nullable<String>.self, forKey: .lodgedOn)
        self.cancellationLodgedOn = try container.decode(Nullable<String>.self, forKey: .cancellationLodgedOn)
        self.cancelledAt = try container.decode(Nullable<Date>.self, forKey: .cancelledAt)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.reference, forKey: .reference)
        try container.encode(self.scheme, forKey: .scheme)
        try container.encode(self.sequenceType, forKey: .sequenceType)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.debtorName, forKey: .debtorName)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.bic, forKey: .bic)
        try container.encode(self.bankCode, forKey: .bankCode)
        try container.encode(self.bankAccountNumber, forKey: .bankAccountNumber)
        try container.encode(self.accountType, forKey: .accountType)
        try container.encode(self.signatureDate, forKey: .signatureDate)
        try container.encode(self.collectionsCount, forKey: .collectionsCount)
        try container.encode(self.lastCollectionDate, forKey: .lastCollectionDate)
        try container.encode(self.expiresOn, forKey: .expiresOn)
        try container.encode(self.lodgedOn, forKey: .lodgedOn)
        try container.encode(self.cancellationLodgedOn, forKey: .cancellationLodgedOn)
        try container.encode(self.cancelledAt, forKey: .cancelledAt)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case reference
        case scheme
        case sequenceType
        case status
        case debtorName
        case iban
        case bic
        case bankCode
        case bankAccountNumber
        case accountType
        case signatureDate
        case collectionsCount
        case lastCollectionDate
        case expiresOn
        case lodgedOn
        case cancellationLodgedOn
        case cancelledAt
        case notes
        case createdAt
    }
}