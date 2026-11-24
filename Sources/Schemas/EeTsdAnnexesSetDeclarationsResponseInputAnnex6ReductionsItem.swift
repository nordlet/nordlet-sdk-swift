import Foundation

public struct EeTsdAnnexesSetDeclarationsResponseInputAnnex6ReductionsItem: Codable, Hashable, Sendable {
    /// 6141
    public let month: Int64
    /// 6142
    public let year: Int64
    /// 6143: the amount taxed in that period whose basis fell away
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        month: Int64,
        year: Int64,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.month = month
        self.year = year
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case month
        case year
        case amount
    }
}