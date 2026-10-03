import Foundation

public struct PostV1DeclarationsPlVatUeGenerateResponseTotalsItem: Codable, Hashable, Sendable {
    public let section: PostV1DeclarationsPlVatUeGenerateResponseTotalsItemSection
    public let counterparties: Int64
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        section: PostV1DeclarationsPlVatUeGenerateResponseTotalsItemSection,
        counterparties: Int64,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.section = section
        self.counterparties = counterparties
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.section = try container.decode(PostV1DeclarationsPlVatUeGenerateResponseTotalsItemSection.self, forKey: .section)
        self.counterparties = try container.decode(Int64.self, forKey: .counterparties)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.section, forKey: .section)
        try container.encode(self.counterparties, forKey: .counterparties)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case section
        case counterparties
        case amount
    }
}