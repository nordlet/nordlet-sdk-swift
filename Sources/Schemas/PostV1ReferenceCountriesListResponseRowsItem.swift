import Foundation

public struct PostV1ReferenceCountriesListResponseRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let isEu: Bool
    public let isEea: Bool
    public let names: PostV1ReferenceCountriesListResponseRowsItemNames
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        isEu: Bool,
        isEea: Bool,
        names: PostV1ReferenceCountriesListResponseRowsItemNames,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.isEu = isEu
        self.isEea = isEea
        self.names = names
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.isEu = try container.decode(Bool.self, forKey: .isEu)
        self.isEea = try container.decode(Bool.self, forKey: .isEea)
        self.names = try container.decode(PostV1ReferenceCountriesListResponseRowsItemNames.self, forKey: .names)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.isEu, forKey: .isEu)
        try container.encode(self.isEea, forKey: .isEea)
        try container.encode(self.names, forKey: .names)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case isEu
        case isEea
        case names
    }
}