import Foundation

public struct FxRevaluationRunLedgerResponseLinesItem: Codable, Hashable, Sendable {
    public let kind: FxRevaluationRunLedgerResponseLinesItemKind
    public let currency: String
    public let partnerId: Nullable<String>
    public let accountCode: String
    /// Unrealised gain (positive) or loss (negative) of the line
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        kind: FxRevaluationRunLedgerResponseLinesItemKind,
        currency: String,
        partnerId: Nullable<String>,
        accountCode: String,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.kind = kind
        self.currency = currency
        self.partnerId = partnerId
        self.accountCode = accountCode
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.kind = try container.decode(FxRevaluationRunLedgerResponseLinesItemKind.self, forKey: .kind)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
        case currency
        case partnerId
        case accountCode
        case amount
    }
}