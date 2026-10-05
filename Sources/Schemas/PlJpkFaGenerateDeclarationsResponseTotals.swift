import Foundation

public struct PlJpkFaGenerateDeclarationsResponseTotals: Codable, Hashable, Sendable {
    public let invoices: String
    public let lines: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoices: String,
        lines: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoices = invoices
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoices = try container.decode(String.self, forKey: .invoices)
        self.lines = try container.decode(String.self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoices, forKey: .invoices)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoices
        case lines
    }
}