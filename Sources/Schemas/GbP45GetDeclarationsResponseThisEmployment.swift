import Foundation

public struct GbP45GetDeclarationsResponseThisEmployment: Codable, Hashable, Sendable {
    public let totalPay: String
    public let totalTax: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        totalPay: String,
        totalTax: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.totalPay = totalPay
        self.totalTax = totalTax
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.totalPay = try container.decode(String.self, forKey: .totalPay)
        self.totalTax = try container.decode(String.self, forKey: .totalTax)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.totalPay, forKey: .totalPay)
        try container.encode(self.totalTax, forKey: .totalTax)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case totalPay
        case totalTax
    }
}