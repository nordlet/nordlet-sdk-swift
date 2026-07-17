import Foundation

public struct PostV1DeclarationsLtIntrastatComputeResponseCounts: Codable, Hashable, Sendable {
    public let invoices: Int64
    public let linesIncluded: Int64
    public let linesSkipped: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoices: Int64,
        linesIncluded: Int64,
        linesSkipped: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoices = invoices
        self.linesIncluded = linesIncluded
        self.linesSkipped = linesSkipped
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoices = try container.decode(Int64.self, forKey: .invoices)
        self.linesIncluded = try container.decode(Int64.self, forKey: .linesIncluded)
        self.linesSkipped = try container.decode(Int64.self, forKey: .linesSkipped)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoices, forKey: .invoices)
        try container.encode(self.linesIncluded, forKey: .linesIncluded)
        try container.encode(self.linesSkipped, forKey: .linesSkipped)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoices
        case linesIncluded
        case linesSkipped
    }
}