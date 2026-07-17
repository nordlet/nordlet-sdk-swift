import Foundation

public struct PostV1ReportsPosSalesResponseByRateItem: Codable, Hashable, Sendable {
    public let vatRatePercent: String
    public let net: String
    public let vat: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        vatRatePercent: String,
        net: String,
        vat: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.vatRatePercent = vatRatePercent
        self.net = net
        self.vat = vat
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.vatRatePercent = try container.decode(String.self, forKey: .vatRatePercent)
        self.net = try container.decode(String.self, forKey: .net)
        self.vat = try container.decode(String.self, forKey: .vat)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.vat, forKey: .vat)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case vatRatePercent
        case net
        case vat
    }
}