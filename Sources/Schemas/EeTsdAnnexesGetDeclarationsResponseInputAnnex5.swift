import Foundation

public struct EeTsdAnnexesGetDeclarationsResponseInputAnnex5: Codable, Hashable, Sendable {
    /// 5000: gifts and donations of the month, except those of 5010
    public let gifts: String?
    /// 5010: gifts and donations of the month to persons on the TuMS § 11 lg 1 list or § 11 lg 10 associations (0 when none)
    public let giftsToListedPersons: String?
    /// TuMS § 49 lg 2 limit used this month for 5020: `socialTax` 3 % of the personalised social-taxed payments of the year (5030), `profit` 10 % of the last financial year’s profit (5040, 5050); the choice of December is final
    public let limit: EeTsdAnnexesGetDeclarationsResponseInputAnnex5Limit?
    /// 5040: profit of the last financial year ended by 1 January, own profit only (0 for a loss); needed with `profit`
    public let lastYearProfit: String?
    /// 5100: costs of the month for food, transport, accommodation or entertainment of guests or partners (0 to use the cumulative recalculation without spending)
    public let entertainment: String?
    /// 5180: part II, taxable gifts and donations of a person on the TuMS § 11 lg 1 list; excludes the part I fields
    public let listedPersonTaxableGifts: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        gifts: String? = nil,
        giftsToListedPersons: String? = nil,
        limit: EeTsdAnnexesGetDeclarationsResponseInputAnnex5Limit? = nil,
        lastYearProfit: String? = nil,
        entertainment: String? = nil,
        listedPersonTaxableGifts: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.gifts = gifts
        self.giftsToListedPersons = giftsToListedPersons
        self.limit = limit
        self.lastYearProfit = lastYearProfit
        self.entertainment = entertainment
        self.listedPersonTaxableGifts = listedPersonTaxableGifts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.gifts = try container.decodeIfPresent(String.self, forKey: .gifts)
        self.giftsToListedPersons = try container.decodeIfPresent(String.self, forKey: .giftsToListedPersons)
        self.limit = try container.decodeIfPresent(EeTsdAnnexesGetDeclarationsResponseInputAnnex5Limit.self, forKey: .limit)
        self.lastYearProfit = try container.decodeIfPresent(String.self, forKey: .lastYearProfit)
        self.entertainment = try container.decodeIfPresent(String.self, forKey: .entertainment)
        self.listedPersonTaxableGifts = try container.decodeIfPresent(String.self, forKey: .listedPersonTaxableGifts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.gifts, forKey: .gifts)
        try container.encodeIfPresent(self.giftsToListedPersons, forKey: .giftsToListedPersons)
        try container.encodeIfPresent(self.limit, forKey: .limit)
        try container.encodeIfPresent(self.lastYearProfit, forKey: .lastYearProfit)
        try container.encodeIfPresent(self.entertainment, forKey: .entertainment)
        try container.encodeIfPresent(self.listedPersonTaxableGifts, forKey: .listedPersonTaxableGifts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case gifts
        case giftsToListedPersons
        case limit
        case lastYearProfit
        case entertainment
        case listedPersonTaxableGifts
    }
}