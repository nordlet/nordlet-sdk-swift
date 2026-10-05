import Foundation

public struct DeReturnFactsGetDeclarationsResponseFactsMunicipalitiesItem: Codable, Hashable, Sendable {
    public let name: String
    public let postalCode: String
    public let ags: String
    public let hebesatz: String
    public let wages: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        postalCode: String,
        ags: String,
        hebesatz: String,
        wages: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.postalCode = postalCode
        self.ags = ags
        self.hebesatz = hebesatz
        self.wages = wages
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.postalCode = try container.decode(String.self, forKey: .postalCode)
        self.ags = try container.decode(String.self, forKey: .ags)
        self.hebesatz = try container.decode(String.self, forKey: .hebesatz)
        self.wages = try container.decode(String.self, forKey: .wages)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.postalCode, forKey: .postalCode)
        try container.encode(self.ags, forKey: .ags)
        try container.encode(self.hebesatz, forKey: .hebesatz)
        try container.encode(self.wages, forKey: .wages)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case postalCode
        case ags
        case hebesatz
        case wages
    }
}