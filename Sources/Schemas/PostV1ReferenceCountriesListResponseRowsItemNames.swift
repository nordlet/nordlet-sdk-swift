import Foundation

public struct PostV1ReferenceCountriesListResponseRowsItemNames: Codable, Hashable, Sendable {
    public let lt: String
    public let en: String
    public let ru: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lt: String,
        en: String,
        ru: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lt = lt
        self.en = en
        self.ru = ru
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lt = try container.decode(String.self, forKey: .lt)
        self.en = try container.decode(String.self, forKey: .en)
        self.ru = try container.decode(String.self, forKey: .ru)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.lt, forKey: .lt)
        try container.encode(self.en, forKey: .en)
        try container.encode(self.ru, forKey: .ru)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lt
        case en
        case ru
    }
}