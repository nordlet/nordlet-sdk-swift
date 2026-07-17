import Foundation

public struct PostV1PayrollRunsGetResponseLinesItemAdditionsItem: Codable, Hashable, Sendable {
    public let name: String
    public let amount: String
    public let taxable: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        amount: String,
        taxable: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.amount = amount
        self.taxable = taxable
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.taxable = try container.decode(Bool.self, forKey: .taxable)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.taxable, forKey: .taxable)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case amount
        case taxable
    }
}