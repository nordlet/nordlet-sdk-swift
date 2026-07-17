import Foundation

public struct PostV1LedgerPeriodsUnlockResponse: Codable, Hashable, Sendable {
    public let id: String
    public let year: Int64
    public let month: Int64
    public let status: PostV1LedgerPeriodsUnlockResponseStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        year: Int64,
        month: Int64,
        status: PostV1LedgerPeriodsUnlockResponseStatus,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.year = year
        self.month = month
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.status = try container.decode(PostV1LedgerPeriodsUnlockResponseStatus.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case year
        case month
        case status
    }
}