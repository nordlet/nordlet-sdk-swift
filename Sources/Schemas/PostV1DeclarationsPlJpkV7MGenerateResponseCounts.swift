import Foundation

public struct PostV1DeclarationsPlJpkV7MGenerateResponseCounts: Codable, Hashable, Sendable {
    public let salesRows: Int64
    public let purchaseRows: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        salesRows: Int64,
        purchaseRows: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.salesRows = salesRows
        self.purchaseRows = purchaseRows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.salesRows = try container.decode(Int64.self, forKey: .salesRows)
        self.purchaseRows = try container.decode(Int64.self, forKey: .purchaseRows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.salesRows, forKey: .salesRows)
        try container.encode(self.purchaseRows, forKey: .purchaseRows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case salesRows
        case purchaseRows
    }
}