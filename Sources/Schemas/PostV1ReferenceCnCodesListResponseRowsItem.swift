import Foundation

public struct PostV1ReferenceCnCodesListResponseRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: String
    public let nameLt: Nullable<String>
    public let supplementaryUnit: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: String,
        nameLt: Nullable<String>,
        supplementaryUnit: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.nameLt = nameLt
        self.supplementaryUnit = supplementaryUnit
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.nameLt = try container.decode(Nullable<String>.self, forKey: .nameLt)
        self.supplementaryUnit = try container.decode(Nullable<String>.self, forKey: .supplementaryUnit)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.nameLt, forKey: .nameLt)
        try container.encode(self.supplementaryUnit, forKey: .supplementaryUnit)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case nameLt
        case supplementaryUnit
    }
}