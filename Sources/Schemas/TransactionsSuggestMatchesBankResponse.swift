import Foundation

public struct TransactionsSuggestMatchesBankResponse: Codable, Hashable, Sendable {
    public let suggestions: [TransactionsSuggestMatchesBankResponseSuggestionsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        suggestions: [TransactionsSuggestMatchesBankResponseSuggestionsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.suggestions = suggestions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.suggestions = try container.decode([TransactionsSuggestMatchesBankResponseSuggestionsItem].self, forKey: .suggestions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.suggestions, forKey: .suggestions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case suggestions
    }
}