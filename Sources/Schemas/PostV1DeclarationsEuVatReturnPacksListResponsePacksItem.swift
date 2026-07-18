import Foundation

public struct PostV1DeclarationsEuVatReturnPacksListResponsePacksItem: Codable, Hashable, Sendable {
    public let countryCode: String
    public let formKey: String
    public let formName: String
    public let frequency: PostV1DeclarationsEuVatReturnPacksListResponsePacksItemFrequency
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        formKey: String,
        formName: String,
        frequency: PostV1DeclarationsEuVatReturnPacksListResponsePacksItemFrequency,
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.formKey = formKey
        self.formName = formName
        self.frequency = frequency
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.formKey = try container.decode(String.self, forKey: .formKey)
        self.formName = try container.decode(String.self, forKey: .formName)
        self.frequency = try container.decode(PostV1DeclarationsEuVatReturnPacksListResponsePacksItemFrequency.self, forKey: .frequency)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.formKey, forKey: .formKey)
        try container.encode(self.formName, forKey: .formName)
        try container.encode(self.frequency, forKey: .frequency)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case formKey
        case formName
        case frequency
        case source
    }
}