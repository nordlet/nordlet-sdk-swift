import Foundation

public struct UsDeUnemploymentGetDeclarationsResponseUc8APagesItem: Codable, Hashable, Sendable {
    public let rows: [UsDeUnemploymentGetDeclarationsResponseUc8APagesItemRowsItem]
    public let line31: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rows: [UsDeUnemploymentGetDeclarationsResponseUc8APagesItemRowsItem],
        line31: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rows = rows
        self.line31 = line31
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rows = try container.decode([UsDeUnemploymentGetDeclarationsResponseUc8APagesItemRowsItem].self, forKey: .rows)
        self.line31 = try container.decode(String.self, forKey: .line31)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.line31, forKey: .line31)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rows
        case line31
    }
}