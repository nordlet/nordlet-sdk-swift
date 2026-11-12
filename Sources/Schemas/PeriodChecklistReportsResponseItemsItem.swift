import Foundation

public struct PeriodChecklistReportsResponseItemsItem: Codable, Hashable, Sendable {
    public let code: PeriodChecklistReportsResponseItemsItemCode
    public let count: Int64
    public let message: String
    public let ids: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: PeriodChecklistReportsResponseItemsItemCode,
        count: Int64,
        message: String,
        ids: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.count = count
        self.message = message
        self.ids = ids
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(PeriodChecklistReportsResponseItemsItemCode.self, forKey: .code)
        self.count = try container.decode(Int64.self, forKey: .count)
        self.message = try container.decode(String.self, forKey: .message)
        self.ids = try container.decode([String].self, forKey: .ids)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.count, forKey: .count)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.ids, forKey: .ids)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case count
        case message
        case ids
    }
}