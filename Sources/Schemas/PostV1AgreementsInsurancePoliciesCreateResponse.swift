import Foundation

public struct PostV1AgreementsInsurancePoliciesCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let insurerPartnerId: Nullable<String>
    public let policyNumber: String
    public let insuredObject: String
    public let fromDate: String
    public let toDate: String
    public let premium: Nullable<String>
    public let currency: String
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        insurerPartnerId: Nullable<String>,
        policyNumber: String,
        insuredObject: String,
        fromDate: String,
        toDate: String,
        premium: Nullable<String>,
        currency: String,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.insurerPartnerId = insurerPartnerId
        self.policyNumber = policyNumber
        self.insuredObject = insuredObject
        self.fromDate = fromDate
        self.toDate = toDate
        self.premium = premium
        self.currency = currency
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.insurerPartnerId = try container.decode(Nullable<String>.self, forKey: .insurerPartnerId)
        self.policyNumber = try container.decode(String.self, forKey: .policyNumber)
        self.insuredObject = try container.decode(String.self, forKey: .insuredObject)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.premium = try container.decode(Nullable<String>.self, forKey: .premium)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.insurerPartnerId, forKey: .insurerPartnerId)
        try container.encode(self.policyNumber, forKey: .policyNumber)
        try container.encode(self.insuredObject, forKey: .insuredObject)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.premium, forKey: .premium)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case insurerPartnerId
        case policyNumber
        case insuredObject
        case fromDate
        case toDate
        case premium
        case currency
        case notes
        case createdAt
    }
}