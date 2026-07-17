import Foundation

public struct PostV1AssetsDepreciationPostResponse: Codable, Hashable, Sendable {
    public let posted: Int64
    public let skipped: Int64
    public let total: String
    public let journalTransactionId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        posted: Int64,
        skipped: Int64,
        total: String,
        journalTransactionId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.posted = posted
        self.skipped = skipped
        self.total = total
        self.journalTransactionId = journalTransactionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.posted = try container.decode(Int64.self, forKey: .posted)
        self.skipped = try container.decode(Int64.self, forKey: .skipped)
        self.total = try container.decode(String.self, forKey: .total)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.posted, forKey: .posted)
        try container.encode(self.skipped, forKey: .skipped)
        try container.encode(self.total, forKey: .total)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case posted
        case skipped
        case total
        case journalTransactionId
    }
}