import Foundation

extension Requests {
    public struct ItInailAutoliquidazioneComputeDeclarationsRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let positions: [ItInailAutoliquidazioneComputeDeclarationsRequestPositionsItem]
        public let rataAnticipata: String?
        public let rateazione: Bool?
        public let codiceDitta: String?
        public let codiceDittaControlCode: String?
        public let sedeInail: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            positions: [ItInailAutoliquidazioneComputeDeclarationsRequestPositionsItem],
            rataAnticipata: String? = nil,
            rateazione: Bool? = nil,
            codiceDitta: String? = nil,
            codiceDittaControlCode: String? = nil,
            sedeInail: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.positions = positions
            self.rataAnticipata = rataAnticipata
            self.rateazione = rateazione
            self.codiceDitta = codiceDitta
            self.codiceDittaControlCode = codiceDittaControlCode
            self.sedeInail = sedeInail
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.positions = try container.decode([ItInailAutoliquidazioneComputeDeclarationsRequestPositionsItem].self, forKey: .positions)
            self.rataAnticipata = try container.decodeIfPresent(String.self, forKey: .rataAnticipata)
            self.rateazione = try container.decodeIfPresent(Bool.self, forKey: .rateazione)
            self.codiceDitta = try container.decodeIfPresent(String.self, forKey: .codiceDitta)
            self.codiceDittaControlCode = try container.decodeIfPresent(String.self, forKey: .codiceDittaControlCode)
            self.sedeInail = try container.decodeIfPresent(String.self, forKey: .sedeInail)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.positions, forKey: .positions)
            try container.encodeIfPresent(self.rataAnticipata, forKey: .rataAnticipata)
            try container.encodeIfPresent(self.rateazione, forKey: .rateazione)
            try container.encodeIfPresent(self.codiceDitta, forKey: .codiceDitta)
            try container.encodeIfPresent(self.codiceDittaControlCode, forKey: .codiceDittaControlCode)
            try container.encodeIfPresent(self.sedeInail, forKey: .sedeInail)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case positions
            case rataAnticipata
            case rateazione
            case codiceDitta
            case codiceDittaControlCode
            case sedeInail
        }
    }
}