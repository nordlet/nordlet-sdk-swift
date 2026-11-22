import Foundation

public struct Us1099NecListDeclarationsResponseFormsItem: Codable, Hashable, Sendable {
    public let partnerId: String
    public let name: String
    public let nameType: Us1099NecListDeclarationsResponseFormsItemNameType
    public let tinType: Nullable<String>
    public let tin: Nullable<String>
    public let taxClassification: Nullable<String>
    public let box1: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        partnerId: String,
        name: String,
        nameType: Us1099NecListDeclarationsResponseFormsItemNameType,
        tinType: Nullable<String>,
        tin: Nullable<String>,
        taxClassification: Nullable<String>,
        box1: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.partnerId = partnerId
        self.name = name
        self.nameType = nameType
        self.tinType = tinType
        self.tin = tin
        self.taxClassification = taxClassification
        self.box1 = box1
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.name = try container.decode(String.self, forKey: .name)
        self.nameType = try container.decode(Us1099NecListDeclarationsResponseFormsItemNameType.self, forKey: .nameType)
        self.tinType = try container.decode(Nullable<String>.self, forKey: .tinType)
        self.tin = try container.decode(Nullable<String>.self, forKey: .tin)
        self.taxClassification = try container.decode(Nullable<String>.self, forKey: .taxClassification)
        self.box1 = try container.decode(String.self, forKey: .box1)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.nameType, forKey: .nameType)
        try container.encode(self.tinType, forKey: .tinType)
        try container.encode(self.tin, forKey: .tin)
        try container.encode(self.taxClassification, forKey: .taxClassification)
        try container.encode(self.box1, forKey: .box1)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case partnerId
        case name
        case nameType
        case tinType
        case tin
        case taxClassification
        case box1
    }
}