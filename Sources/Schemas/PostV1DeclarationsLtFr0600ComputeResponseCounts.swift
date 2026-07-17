import Foundation

public struct PostV1DeclarationsLtFr0600ComputeResponseCounts: Codable, Hashable, Sendable {
    public let salesInvoices: Int64
    public let purchaseInvoices: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        salesInvoices: Int64,
        purchaseInvoices: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.salesInvoices = salesInvoices
        self.purchaseInvoices = purchaseInvoices
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.salesInvoices = try container.decode(Int64.self, forKey: .salesInvoices)
        self.purchaseInvoices = try container.decode(Int64.self, forKey: .purchaseInvoices)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.salesInvoices, forKey: .salesInvoices)
        try container.encode(self.purchaseInvoices, forKey: .purchaseInvoices)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case salesInvoices
        case purchaseInvoices
    }
}