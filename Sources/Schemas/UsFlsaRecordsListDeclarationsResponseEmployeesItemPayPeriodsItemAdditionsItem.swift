import Foundation

public struct UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemAdditionsItem: Codable, Hashable, Sendable {
    public let name: String
    public let paymentType: Nullable<String>
    public let amount: String
    public let hours: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        paymentType: Nullable<String>,
        amount: String,
        hours: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.paymentType = paymentType
        self.amount = amount
        self.hours = hours
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.paymentType = try container.decode(Nullable<String>.self, forKey: .paymentType)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.hours = try container.decode(Nullable<String>.self, forKey: .hours)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.paymentType, forKey: .paymentType)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.hours, forKey: .hours)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case paymentType
        case amount
        case hours
    }
}