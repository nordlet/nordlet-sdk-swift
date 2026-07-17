import Foundation

public struct PostV1ReportsVatDetailResponseTotals: Codable, Hashable, Sendable {
    public let net: String
    public let vat: String
    public let gross: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        net: String,
        vat: String,
        gross: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.net = net
        self.vat = vat
        self.gross = gross
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.net = try container.decode(String.self, forKey: .net)
        self.vat = try container.decode(String.self, forKey: .vat)
        self.gross = try container.decode(String.self, forKey: .gross)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.vat, forKey: .vat)
        try container.encode(self.gross, forKey: .gross)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case net
        case vat
        case gross
    }
}