import Foundation

public struct LtFr0564ComputeDeclarationsResponseCounts: Codable, Hashable, Sendable {
    public let salesInvoices: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        salesInvoices: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.salesInvoices = salesInvoices
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.salesInvoices = try container.decode(Int64.self, forKey: .salesInvoices)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.salesInvoices, forKey: .salesInvoices)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case salesInvoices
    }
}