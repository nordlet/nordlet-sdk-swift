import Foundation

public struct ItInailAutoliquidazioneComputeDeclarationsResponseF24Item: Codable, Hashable, Sendable {
    public let codiceSede: String
    public let codiceDitta: String
    public let cc: String
    public let numeroRiferimento: String
    public let causale: String
    public let importo: String
    public let credito: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        codiceSede: String,
        codiceDitta: String,
        cc: String,
        numeroRiferimento: String,
        causale: String,
        importo: String,
        credito: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.codiceSede = codiceSede
        self.codiceDitta = codiceDitta
        self.cc = cc
        self.numeroRiferimento = numeroRiferimento
        self.causale = causale
        self.importo = importo
        self.credito = credito
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.codiceSede = try container.decode(String.self, forKey: .codiceSede)
        self.codiceDitta = try container.decode(String.self, forKey: .codiceDitta)
        self.cc = try container.decode(String.self, forKey: .cc)
        self.numeroRiferimento = try container.decode(String.self, forKey: .numeroRiferimento)
        self.causale = try container.decode(String.self, forKey: .causale)
        self.importo = try container.decode(String.self, forKey: .importo)
        self.credito = try container.decodeIfPresent(Bool.self, forKey: .credito)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.codiceSede, forKey: .codiceSede)
        try container.encode(self.codiceDitta, forKey: .codiceDitta)
        try container.encode(self.cc, forKey: .cc)
        try container.encode(self.numeroRiferimento, forKey: .numeroRiferimento)
        try container.encode(self.causale, forKey: .causale)
        try container.encode(self.importo, forKey: .importo)
        try container.encodeIfPresent(self.credito, forKey: .credito)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case codiceSede
        case codiceDitta
        case cc
        case numeroRiferimento
        case causale
        case importo
        case credito
    }
}