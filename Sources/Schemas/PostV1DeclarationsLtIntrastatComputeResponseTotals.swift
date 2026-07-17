import Foundation

public struct PostV1DeclarationsLtIntrastatComputeResponseTotals: Codable, Hashable, Sendable {
    public let invoicedValue: String
    public let statisticalValue: String
    public let netMassKg: String
    public let lines: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoicedValue: String,
        statisticalValue: String,
        netMassKg: String,
        lines: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoicedValue = invoicedValue
        self.statisticalValue = statisticalValue
        self.netMassKg = netMassKg
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoicedValue = try container.decode(String.self, forKey: .invoicedValue)
        self.statisticalValue = try container.decode(String.self, forKey: .statisticalValue)
        self.netMassKg = try container.decode(String.self, forKey: .netMassKg)
        self.lines = try container.decode(Int64.self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoicedValue, forKey: .invoicedValue)
        try container.encode(self.statisticalValue, forKey: .statisticalValue)
        try container.encode(self.netMassKg, forKey: .netMassKg)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoicedValue
        case statisticalValue
        case netMassKg
        case lines
    }
}