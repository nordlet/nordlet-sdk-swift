import Foundation

public struct DeReturnFactsSetDeclarationsResponseFactsDistributionsItem: Codable, Hashable, Sendable {
    public let resolutionDate: CalendarDate
    public let paidOn: CalendarDate
    public let amount: String
    public let certifiedReduction: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        resolutionDate: CalendarDate,
        paidOn: CalendarDate,
        amount: String,
        certifiedReduction: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.resolutionDate = resolutionDate
        self.paidOn = paidOn
        self.amount = amount
        self.certifiedReduction = certifiedReduction
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.resolutionDate = try container.decode(CalendarDate.self, forKey: .resolutionDate)
        self.paidOn = try container.decode(CalendarDate.self, forKey: .paidOn)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.certifiedReduction = try container.decode(String.self, forKey: .certifiedReduction)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.resolutionDate, forKey: .resolutionDate)
        try container.encode(self.paidOn, forKey: .paidOn)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.certifiedReduction, forKey: .certifiedReduction)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case resolutionDate
        case paidOn
        case amount
        case certifiedReduction
    }
}