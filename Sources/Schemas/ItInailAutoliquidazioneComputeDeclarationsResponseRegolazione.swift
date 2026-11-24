import Foundation

public struct ItInailAutoliquidazioneComputeDeclarationsResponseRegolazione: Codable, Hashable, Sendable {
    public let totale: String
    public let addizionale: String
    public let rataAnticipata: String
    public let importo: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        totale: String,
        addizionale: String,
        rataAnticipata: String,
        importo: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.totale = totale
        self.addizionale = addizionale
        self.rataAnticipata = rataAnticipata
        self.importo = importo
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.totale = try container.decode(String.self, forKey: .totale)
        self.addizionale = try container.decode(String.self, forKey: .addizionale)
        self.rataAnticipata = try container.decode(String.self, forKey: .rataAnticipata)
        self.importo = try container.decode(String.self, forKey: .importo)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.totale, forKey: .totale)
        try container.encode(self.addizionale, forKey: .addizionale)
        try container.encode(self.rataAnticipata, forKey: .rataAnticipata)
        try container.encode(self.importo, forKey: .importo)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case totale
        case addizionale
        case rataAnticipata
        case importo
    }
}