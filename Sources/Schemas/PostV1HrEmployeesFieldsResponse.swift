import Foundation

public struct PostV1HrEmployeesFieldsResponse: Codable, Hashable, Sendable {
    public let country: String
    public let fields: [PostV1HrEmployeesFieldsResponseFieldsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        country: String,
        fields: [PostV1HrEmployeesFieldsResponseFieldsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.country = country
        self.fields = fields
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.country = try container.decode(String.self, forKey: .country)
        self.fields = try container.decode([PostV1HrEmployeesFieldsResponseFieldsItem].self, forKey: .fields)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.fields, forKey: .fields)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case country
        case fields
    }
}