import Foundation

public struct VatProrataAdjustmentPostDeclarationsResponse: Codable, Hashable, Sendable {
    public let id: String
    public let date: CalendarDate
    public let fiscalYear: Int64
    public let definitivePercent: String
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        date: CalendarDate,
        fiscalYear: Int64,
        definitivePercent: String,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.date = date
        self.fiscalYear = fiscalYear
        self.definitivePercent = definitivePercent
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.fiscalYear = try container.decode(Int64.self, forKey: .fiscalYear)
        self.definitivePercent = try container.decode(String.self, forKey: .definitivePercent)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.fiscalYear, forKey: .fiscalYear)
        try container.encode(self.definitivePercent, forKey: .definitivePercent)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case date
        case fiscalYear
        case definitivePercent
        case amount
    }
}