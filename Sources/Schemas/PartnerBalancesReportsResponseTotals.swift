import Foundation

public struct PartnerBalancesReportsResponseTotals: Codable, Hashable, Sendable {
    public let receivable: String
    public let payable: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        receivable: String,
        payable: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.receivable = receivable
        self.payable = payable
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.receivable = try container.decode(String.self, forKey: .receivable)
        self.payable = try container.decode(String.self, forKey: .payable)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.receivable, forKey: .receivable)
        try container.encode(self.payable, forKey: .payable)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case receivable
        case payable
    }
}