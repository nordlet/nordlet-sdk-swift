import Foundation

public struct DeEuerGetDeclarationsResponseRowsItem: Codable, Hashable, Sendable {
    public let anlage: DeEuerGetDeclarationsResponseRowsItemAnlage
    public let zeile: Int64
    public let kennzahl: Nullable<String>
    public let label: String
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        anlage: DeEuerGetDeclarationsResponseRowsItemAnlage,
        zeile: Int64,
        kennzahl: Nullable<String>,
        label: String,
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.anlage = anlage
        self.zeile = zeile
        self.kennzahl = kennzahl
        self.label = label
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.anlage = try container.decode(DeEuerGetDeclarationsResponseRowsItemAnlage.self, forKey: .anlage)
        self.zeile = try container.decode(Int64.self, forKey: .zeile)
        self.kennzahl = try container.decode(Nullable<String>.self, forKey: .kennzahl)
        self.label = try container.decode(String.self, forKey: .label)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.anlage, forKey: .anlage)
        try container.encode(self.zeile, forKey: .zeile)
        try container.encode(self.kennzahl, forKey: .kennzahl)
        try container.encode(self.label, forKey: .label)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case anlage
        case zeile
        case kennzahl
        case label
        case value
    }
}