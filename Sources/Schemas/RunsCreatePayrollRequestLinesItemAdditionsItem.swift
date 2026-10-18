import Foundation

public struct RunsCreatePayrollRequestLinesItemAdditionsItem: Codable, Hashable, Sendable {
    public let name: String
    public let amount: String
    public let taxable: Bool?
    public let paymentType: String?
    public let hours: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        amount: String,
        taxable: Bool? = nil,
        paymentType: String? = nil,
        hours: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.amount = amount
        self.taxable = taxable
        self.paymentType = paymentType
        self.hours = hours
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.taxable = try container.decodeIfPresent(Bool.self, forKey: .taxable)
        self.paymentType = try container.decodeIfPresent(String.self, forKey: .paymentType)
        self.hours = try container.decodeIfPresent(String.self, forKey: .hours)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.taxable, forKey: .taxable)
        try container.encodeIfPresent(self.paymentType, forKey: .paymentType)
        try container.encodeIfPresent(self.hours, forKey: .hours)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case amount
        case taxable
        case paymentType
        case hours
    }
}