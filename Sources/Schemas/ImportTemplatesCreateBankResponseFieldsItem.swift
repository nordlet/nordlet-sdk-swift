import Foundation

public struct ImportTemplatesCreateBankResponseFieldsItem: Codable, Hashable, Sendable {
    public let name: String
    public let accountCode: Nullable<String>
    public let createPartner: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        accountCode: Nullable<String>,
        createPartner: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.accountCode = accountCode
        self.createPartner = createPartner
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.accountCode = try container.decode(Nullable<String>.self, forKey: .accountCode)
        self.createPartner = try container.decode(Bool.self, forKey: .createPartner)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.createPartner, forKey: .createPartner)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case accountCode
        case createPartner
    }
}