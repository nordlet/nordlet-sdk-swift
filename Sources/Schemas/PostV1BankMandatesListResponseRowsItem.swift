import Foundation

public struct PostV1BankMandatesListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let reference: String
    public let scheme: PostV1BankMandatesListResponseRowsItemScheme
    public let sequenceType: PostV1BankMandatesListResponseRowsItemSequenceType
    public let status: PostV1BankMandatesListResponseRowsItemStatus
    public let debtorName: String
    public let iban: String
    public let bic: Nullable<String>
    public let signatureDate: String
    public let collectionsCount: Int64
    public let lastCollectionDate: Nullable<String>
    public let expiresOn: String
    public let cancelledAt: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        reference: String,
        scheme: PostV1BankMandatesListResponseRowsItemScheme,
        sequenceType: PostV1BankMandatesListResponseRowsItemSequenceType,
        status: PostV1BankMandatesListResponseRowsItemStatus,
        debtorName: String,
        iban: String,
        bic: Nullable<String>,
        signatureDate: String,
        collectionsCount: Int64,
        lastCollectionDate: Nullable<String>,
        expiresOn: String,
        cancelledAt: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
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
        self.signatureDate = signatureDate
        self.collectionsCount = collectionsCount
        self.lastCollectionDate = lastCollectionDate
        self.expiresOn = expiresOn
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
        self.scheme = try container.decode(PostV1BankMandatesListResponseRowsItemScheme.self, forKey: .scheme)
        self.sequenceType = try container.decode(PostV1BankMandatesListResponseRowsItemSequenceType.self, forKey: .sequenceType)
        self.status = try container.decode(PostV1BankMandatesListResponseRowsItemStatus.self, forKey: .status)
        self.debtorName = try container.decode(String.self, forKey: .debtorName)
        self.iban = try container.decode(String.self, forKey: .iban)
        self.bic = try container.decode(Nullable<String>.self, forKey: .bic)
        self.signatureDate = try container.decode(String.self, forKey: .signatureDate)
        self.collectionsCount = try container.decode(Int64.self, forKey: .collectionsCount)
        self.lastCollectionDate = try container.decode(Nullable<String>.self, forKey: .lastCollectionDate)
        self.expiresOn = try container.decode(String.self, forKey: .expiresOn)
        self.cancelledAt = try container.decode(Nullable<String>.self, forKey: .cancelledAt)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
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
        try container.encode(self.signatureDate, forKey: .signatureDate)
        try container.encode(self.collectionsCount, forKey: .collectionsCount)
        try container.encode(self.lastCollectionDate, forKey: .lastCollectionDate)
        try container.encode(self.expiresOn, forKey: .expiresOn)
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
        case signatureDate
        case collectionsCount
        case lastCollectionDate
        case expiresOn
        case cancelledAt
        case notes
        case createdAt
    }
}