import Foundation

public struct DeReturnFactsSetDeclarationsResponseFactsForeignIncomeItem: Codable, Hashable, Sendable {
    public let countryCode: String
    public let kind: DeReturnFactsSetDeclarationsResponseFactsForeignIncomeItemKind
    public let income: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        kind: DeReturnFactsSetDeclarationsResponseFactsForeignIncomeItemKind,
        income: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.kind = kind
        self.income = income
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.kind = try container.decode(DeReturnFactsSetDeclarationsResponseFactsForeignIncomeItemKind.self, forKey: .kind)
        self.income = try container.decode(String.self, forKey: .income)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.income, forKey: .income)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case kind
        case income
    }
}