import Foundation

public struct PostV1ReferenceUnitsListResponseRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let nameLt: String
    public let nameEn: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        nameLt: String,
        nameEn: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.nameLt = nameLt
        self.nameEn = nameEn
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.nameLt = try container.decode(String.self, forKey: .nameLt)
        self.nameEn = try container.decode(String.self, forKey: .nameEn)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.nameLt, forKey: .nameLt)
        try container.encode(self.nameEn, forKey: .nameEn)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case nameLt
        case nameEn
    }
}