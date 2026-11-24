import Foundation

public struct TransactionsPostBankRequestSaveRule: Codable, Hashable, Sendable {
    public let counterpartyContains: String?
    public let descriptionContains: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        counterpartyContains: String? = nil,
        descriptionContains: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.counterpartyContains = counterpartyContains
        self.descriptionContains = descriptionContains
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.counterpartyContains = try container.decodeIfPresent(String.self, forKey: .counterpartyContains)
        self.descriptionContains = try container.decodeIfPresent(String.self, forKey: .descriptionContains)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.counterpartyContains, forKey: .counterpartyContains)
        try container.encodeIfPresent(self.descriptionContains, forKey: .descriptionContains)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case counterpartyContains
        case descriptionContains
    }
}