import Foundation

public struct PostV1BankTransactionsSuggestMatchesResponse: Codable, Hashable, Sendable {
    public let suggestions: [PostV1BankTransactionsSuggestMatchesResponseSuggestionsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        suggestions: [PostV1BankTransactionsSuggestMatchesResponseSuggestionsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.suggestions = suggestions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.suggestions = try container.decode([PostV1BankTransactionsSuggestMatchesResponseSuggestionsItem].self, forKey: .suggestions)
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