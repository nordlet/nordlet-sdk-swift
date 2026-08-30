import Foundation

public struct PostV1MigrationBooksValidateRequestOpenReceivablesItem: Codable, Hashable, Sendable {
    public let partnerCode: String
    public let dueDate: String?
    public let currency: String?
    public let grossTotal: String
    public let vatTotal: String?
    public let outstanding: String?
    public let fxRate: String?
    public let notes: String?
    public let number: String
    public let issueDate: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        partnerCode: String,
        dueDate: String? = nil,
        currency: String? = nil,
        grossTotal: String,
        vatTotal: String? = nil,
        outstanding: String? = nil,
        fxRate: String? = nil,
        notes: String? = nil,
        number: String,
        issueDate: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.partnerCode = partnerCode
        self.dueDate = dueDate
        self.currency = currency
        self.grossTotal = grossTotal
        self.vatTotal = vatTotal
        self.outstanding = outstanding
        self.fxRate = fxRate
        self.notes = notes
        self.number = number
        self.issueDate = issueDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.partnerCode = try container.decode(String.self, forKey: .partnerCode)
        self.dueDate = try container.decodeIfPresent(String.self, forKey: .dueDate)
        self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.vatTotal = try container.decodeIfPresent(String.self, forKey: .vatTotal)
        self.outstanding = try container.decodeIfPresent(String.self, forKey: .outstanding)
        self.fxRate = try container.decodeIfPresent(String.self, forKey: .fxRate)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.number = try container.decode(String.self, forKey: .number)
        self.issueDate = try container.decode(String.self, forKey: .issueDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.partnerCode, forKey: .partnerCode)
        try container.encodeIfPresent(self.dueDate, forKey: .dueDate)
        try container.encodeIfPresent(self.currency, forKey: .currency)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encodeIfPresent(self.vatTotal, forKey: .vatTotal)
        try container.encodeIfPresent(self.outstanding, forKey: .outstanding)
        try container.encodeIfPresent(self.fxRate, forKey: .fxRate)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.issueDate, forKey: .issueDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case partnerCode
        case dueDate
        case currency
        case grossTotal
        case vatTotal
        case outstanding
        case fxRate
        case notes
        case number
        case issueDate
    }
}