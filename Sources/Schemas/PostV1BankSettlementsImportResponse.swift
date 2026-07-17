import Foundation

public struct PostV1BankSettlementsImportResponse: Codable, Hashable, Sendable {
    public let format: PostV1BankSettlementsImportResponseFormat
    public let imported: Int64
    public let updated: Int64
    public let skipped: Int64
    public let skippedUnassigned: Int64
    public let skippedPayoutRows: Int64
    public let skippedNotSettled: Int64
    public let batches: [PostV1BankSettlementsImportResponseBatchesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        format: PostV1BankSettlementsImportResponseFormat,
        imported: Int64,
        updated: Int64,
        skipped: Int64,
        skippedUnassigned: Int64,
        skippedPayoutRows: Int64,
        skippedNotSettled: Int64,
        batches: [PostV1BankSettlementsImportResponseBatchesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.format = format
        self.imported = imported
        self.updated = updated
        self.skipped = skipped
        self.skippedUnassigned = skippedUnassigned
        self.skippedPayoutRows = skippedPayoutRows
        self.skippedNotSettled = skippedNotSettled
        self.batches = batches
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.format = try container.decode(PostV1BankSettlementsImportResponseFormat.self, forKey: .format)
        self.imported = try container.decode(Int64.self, forKey: .imported)
        self.updated = try container.decode(Int64.self, forKey: .updated)
        self.skipped = try container.decode(Int64.self, forKey: .skipped)
        self.skippedUnassigned = try container.decode(Int64.self, forKey: .skippedUnassigned)
        self.skippedPayoutRows = try container.decode(Int64.self, forKey: .skippedPayoutRows)
        self.skippedNotSettled = try container.decode(Int64.self, forKey: .skippedNotSettled)
        self.batches = try container.decode([PostV1BankSettlementsImportResponseBatchesItem].self, forKey: .batches)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.format, forKey: .format)
        try container.encode(self.imported, forKey: .imported)
        try container.encode(self.updated, forKey: .updated)
        try container.encode(self.skipped, forKey: .skipped)
        try container.encode(self.skippedUnassigned, forKey: .skippedUnassigned)
        try container.encode(self.skippedPayoutRows, forKey: .skippedPayoutRows)
        try container.encode(self.skippedNotSettled, forKey: .skippedNotSettled)
        try container.encode(self.batches, forKey: .batches)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case format
        case imported
        case updated
        case skipped
        case skippedUnassigned
        case skippedPayoutRows
        case skippedNotSettled
        case batches
    }
}