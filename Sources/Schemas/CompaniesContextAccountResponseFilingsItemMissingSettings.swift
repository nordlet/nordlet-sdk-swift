import Foundation

public struct CompaniesContextAccountResponseFilingsItemMissingSettings: Codable, Hashable, Sendable {
    public let operation: CompaniesContextAccountResponseFilingsItemMissingSettingsOperation
    public let system: String
    public let keys: [String]
    public let call: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        operation: CompaniesContextAccountResponseFilingsItemMissingSettingsOperation,
        system: String,
        keys: [String],
        call: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.operation = operation
        self.system = system
        self.keys = keys
        self.call = call
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operation = try container.decode(CompaniesContextAccountResponseFilingsItemMissingSettingsOperation.self, forKey: .operation)
        self.system = try container.decode(String.self, forKey: .system)
        self.keys = try container.decode([String].self, forKey: .keys)
        self.call = try container.decode(String.self, forKey: .call)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.operation, forKey: .operation)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.keys, forKey: .keys)
        try container.encode(self.call, forKey: .call)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case operation
        case system
        case keys
        case call
    }
}