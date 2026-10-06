import Foundation

public struct PartnerBalancesReportsResponse: Codable, Hashable, Sendable {
    public let rows: [PartnerBalancesReportsResponseRowsItem]
    public let totals: PartnerBalancesReportsResponseTotals
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rows: [PartnerBalancesReportsResponseRowsItem],
        totals: PartnerBalancesReportsResponseTotals,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rows = rows
        self.totals = totals
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rows = try container.decode([PartnerBalancesReportsResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(PartnerBalancesReportsResponseTotals.self, forKey: .totals)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rows
        case totals
    }
}