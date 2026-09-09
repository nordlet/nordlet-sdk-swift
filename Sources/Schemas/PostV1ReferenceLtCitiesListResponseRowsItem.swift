import Foundation

public struct PostV1ReferenceLtCitiesListResponseRowsItem: Codable, Hashable, Sendable {
    public let name: String
    public let municipalityCode: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        municipalityCode: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.municipalityCode = municipalityCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.municipalityCode = try container.decode(String.self, forKey: .municipalityCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.municipalityCode, forKey: .municipalityCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case municipalityCode
    }
}