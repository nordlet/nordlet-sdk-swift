import Foundation

public struct GbP45GetDeclarationsResponseEmployer: Codable, Hashable, Sendable {
    public let officeNumber: String
    public let reference: String
    public let name: String
    public let address: [String]
    public let postcode: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        officeNumber: String,
        reference: String,
        name: String,
        address: [String],
        postcode: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.officeNumber = officeNumber
        self.reference = reference
        self.name = name
        self.address = address
        self.postcode = postcode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.officeNumber = try container.decode(String.self, forKey: .officeNumber)
        self.reference = try container.decode(String.self, forKey: .reference)
        self.name = try container.decode(String.self, forKey: .name)
        self.address = try container.decode([String].self, forKey: .address)
        self.postcode = try container.decode(Nullable<String>.self, forKey: .postcode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.officeNumber, forKey: .officeNumber)
        try container.encode(self.reference, forKey: .reference)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.postcode, forKey: .postcode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case officeNumber
        case reference
        case name
        case address
        case postcode
    }
}