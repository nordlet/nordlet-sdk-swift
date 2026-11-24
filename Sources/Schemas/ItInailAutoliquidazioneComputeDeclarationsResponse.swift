import Foundation

public struct ItInailAutoliquidazioneComputeDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let positions: [ItInailAutoliquidazioneComputeDeclarationsResponsePositionsItem]
    public let regolazione: ItInailAutoliquidazioneComputeDeclarationsResponseRegolazione
    public let rata: ItInailAutoliquidazioneComputeDeclarationsResponseRata
    public let total: String
    public let instalments: [ItInailAutoliquidazioneComputeDeclarationsResponseInstalmentsItem]
    public let f24: [ItInailAutoliquidazioneComputeDeclarationsResponseF24Item]
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        positions: [ItInailAutoliquidazioneComputeDeclarationsResponsePositionsItem],
        regolazione: ItInailAutoliquidazioneComputeDeclarationsResponseRegolazione,
        rata: ItInailAutoliquidazioneComputeDeclarationsResponseRata,
        total: String,
        instalments: [ItInailAutoliquidazioneComputeDeclarationsResponseInstalmentsItem],
        f24: [ItInailAutoliquidazioneComputeDeclarationsResponseF24Item],
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.positions = positions
        self.regolazione = regolazione
        self.rata = rata
        self.total = total
        self.instalments = instalments
        self.f24 = f24
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.positions = try container.decode([ItInailAutoliquidazioneComputeDeclarationsResponsePositionsItem].self, forKey: .positions)
        self.regolazione = try container.decode(ItInailAutoliquidazioneComputeDeclarationsResponseRegolazione.self, forKey: .regolazione)
        self.rata = try container.decode(ItInailAutoliquidazioneComputeDeclarationsResponseRata.self, forKey: .rata)
        self.total = try container.decode(String.self, forKey: .total)
        self.instalments = try container.decode([ItInailAutoliquidazioneComputeDeclarationsResponseInstalmentsItem].self, forKey: .instalments)
        self.f24 = try container.decode([ItInailAutoliquidazioneComputeDeclarationsResponseF24Item].self, forKey: .f24)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.positions, forKey: .positions)
        try container.encode(self.regolazione, forKey: .regolazione)
        try container.encode(self.rata, forKey: .rata)
        try container.encode(self.total, forKey: .total)
        try container.encode(self.instalments, forKey: .instalments)
        try container.encode(self.f24, forKey: .f24)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case positions
        case regolazione
        case rata
        case total
        case instalments
        case f24
        case warnings
    }
}