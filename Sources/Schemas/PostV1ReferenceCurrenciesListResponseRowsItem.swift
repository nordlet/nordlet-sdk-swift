import Foundation

public struct PostV1ReferenceCurrenciesListResponseRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: String
    public let minorUnits: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: String,
        minorUnits: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.minorUnits = minorUnits
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.minorUnits = try container.decode(Int64.self, forKey: .minorUnits)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.minorUnits, forKey: .minorUnits)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case minorUnits
    }
}