import Foundation

public struct DirectDebitsCandidatesBankResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let fullNumber: Nullable<String>
    public let issueDate: Nullable<CalendarDate>
    public let dueDate: Nullable<CalendarDate>
    public let partnerId: String
    public let partnerName: Nullable<String>
    public let currency: String
    public let grossTotal: String
    public let paidAmount: String
    public let remaining: String
    public let mandateId: Nullable<String>
    public let mandateReference: Nullable<String>
    public let mandateSignatureDate: Nullable<CalendarDate>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        fullNumber: Nullable<String>,
        issueDate: Nullable<CalendarDate>,
        dueDate: Nullable<CalendarDate>,
        partnerId: String,
        partnerName: Nullable<String>,
        currency: String,
        grossTotal: String,
        paidAmount: String,
        remaining: String,
        mandateId: Nullable<String>,
        mandateReference: Nullable<String>,
        mandateSignatureDate: Nullable<CalendarDate>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.fullNumber = fullNumber
        self.issueDate = issueDate
        self.dueDate = dueDate
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.currency = currency
        self.grossTotal = grossTotal
        self.paidAmount = paidAmount
        self.remaining = remaining
        self.mandateId = mandateId
        self.mandateReference = mandateReference
        self.mandateSignatureDate = mandateSignatureDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.fullNumber = try container.decode(Nullable<String>.self, forKey: .fullNumber)
        self.issueDate = try container.decode(Nullable<CalendarDate>.self, forKey: .issueDate)
        self.dueDate = try container.decode(Nullable<CalendarDate>.self, forKey: .dueDate)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(Nullable<String>.self, forKey: .partnerName)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.paidAmount = try container.decode(String.self, forKey: .paidAmount)
        self.remaining = try container.decode(String.self, forKey: .remaining)
        self.mandateId = try container.decode(Nullable<String>.self, forKey: .mandateId)
        self.mandateReference = try container.decode(Nullable<String>.self, forKey: .mandateReference)
        self.mandateSignatureDate = try container.decode(Nullable<CalendarDate>.self, forKey: .mandateSignatureDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.fullNumber, forKey: .fullNumber)
        try container.encode(self.issueDate, forKey: .issueDate)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.paidAmount, forKey: .paidAmount)
        try container.encode(self.remaining, forKey: .remaining)
        try container.encode(self.mandateId, forKey: .mandateId)
        try container.encode(self.mandateReference, forKey: .mandateReference)
        try container.encode(self.mandateSignatureDate, forKey: .mandateSignatureDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case fullNumber
        case issueDate
        case dueDate
        case partnerId
        case partnerName
        case currency
        case grossTotal
        case paidAmount
        case remaining
        case mandateId
        case mandateReference
        case mandateSignatureDate
    }
}