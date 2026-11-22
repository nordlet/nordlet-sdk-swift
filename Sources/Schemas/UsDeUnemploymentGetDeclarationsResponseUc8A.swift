import Foundation

public struct UsDeUnemploymentGetDeclarationsResponseUc8A: Codable, Hashable, Sendable {
    public let pages: [UsDeUnemploymentGetDeclarationsResponseUc8APagesItem]
    public let line32: String
    public let line33: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        pages: [UsDeUnemploymentGetDeclarationsResponseUc8APagesItem],
        line32: String,
        line33: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.pages = pages
        self.line32 = line32
        self.line33 = line33
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pages = try container.decode([UsDeUnemploymentGetDeclarationsResponseUc8APagesItem].self, forKey: .pages)
        self.line32 = try container.decode(String.self, forKey: .line32)
        self.line33 = try container.decode(String.self, forKey: .line33)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.pages, forKey: .pages)
        try container.encode(self.line32, forKey: .line32)
        try container.encode(self.line33, forKey: .line33)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case pages
        case line32
        case line33
    }
}