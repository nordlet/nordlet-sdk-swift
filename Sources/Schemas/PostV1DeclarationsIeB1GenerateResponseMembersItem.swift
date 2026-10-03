import Foundation

public struct PostV1DeclarationsIeB1GenerateResponseMembersItem: Codable, Hashable, Sendable {
    public let name: String
    public let identifier: Nullable<String>
    public let sharesQuantity: Nullable<String>
    public let sharesAmount: Nullable<String>
    public let sharesType: Nullable<String>
    public let acquisitionDate: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        identifier: Nullable<String>,
        sharesQuantity: Nullable<String>,
        sharesAmount: Nullable<String>,
        sharesType: Nullable<String>,
        acquisitionDate: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.identifier = identifier
        self.sharesQuantity = sharesQuantity
        self.sharesAmount = sharesAmount
        self.sharesType = sharesType
        self.acquisitionDate = acquisitionDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.identifier = try container.decode(Nullable<String>.self, forKey: .identifier)
        self.sharesQuantity = try container.decode(Nullable<String>.self, forKey: .sharesQuantity)
        self.sharesAmount = try container.decode(Nullable<String>.self, forKey: .sharesAmount)
        self.sharesType = try container.decode(Nullable<String>.self, forKey: .sharesType)
        self.acquisitionDate = try container.decode(Nullable<String>.self, forKey: .acquisitionDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.identifier, forKey: .identifier)
        try container.encode(self.sharesQuantity, forKey: .sharesQuantity)
        try container.encode(self.sharesAmount, forKey: .sharesAmount)
        try container.encode(self.sharesType, forKey: .sharesType)
        try container.encode(self.acquisitionDate, forKey: .acquisitionDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case identifier
        case sharesQuantity
        case sharesAmount
        case sharesType
        case acquisitionDate
    }
}