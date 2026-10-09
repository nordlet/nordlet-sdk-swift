import Foundation

public struct DeferralsPostPurchasesResponse: Codable, Hashable, Sendable {
    public let posted: Int64
    public let total: String
    public let journalTransactionIds: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        posted: Int64,
        total: String,
        journalTransactionIds: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.posted = posted
        self.total = total
        self.journalTransactionIds = journalTransactionIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.posted = try container.decode(Int64.self, forKey: .posted)
        self.total = try container.decode(String.self, forKey: .total)
        self.journalTransactionIds = try container.decode([String].self, forKey: .journalTransactionIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.posted, forKey: .posted)
        try container.encode(self.total, forKey: .total)
        try container.encode(self.journalTransactionIds, forKey: .journalTransactionIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case posted
        case total
        case journalTransactionIds
    }
}