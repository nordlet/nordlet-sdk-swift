import Foundation

public struct PostV1ReportsGlDetailResponse: Codable, Hashable, Sendable {
    public let account: PostV1ReportsGlDetailResponseAccount
    public let opening: String
    public let closing: String
    public let rows: [PostV1ReportsGlDetailResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        account: PostV1ReportsGlDetailResponseAccount,
        opening: String,
        closing: String,
        rows: [PostV1ReportsGlDetailResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.account = account
        self.opening = opening
        self.closing = closing
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.account = try container.decode(PostV1ReportsGlDetailResponseAccount.self, forKey: .account)
        self.opening = try container.decode(String.self, forKey: .opening)
        self.closing = try container.decode(String.self, forKey: .closing)
        self.rows = try container.decode([PostV1ReportsGlDetailResponseRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.account, forKey: .account)
        try container.encode(self.opening, forKey: .opening)
        try container.encode(self.closing, forKey: .closing)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case account
        case opening
        case closing
        case rows
    }
}