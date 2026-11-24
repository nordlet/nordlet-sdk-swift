import Foundation

public struct ItInailAutoliquidazioneComputeDeclarationsResponsePositionsItem: Codable, Hashable, Sendable {
    public let pat: String
    public let patControlCode: String
    public let voce: String
    public let employees: Int64
    public let retribuzioni: String
    public let quoteEsenti: String
    public let imponibileRegolazione: String
    public let premioRegolazione: String
    public let riduzioneRegolazione: String
    public let totaleRegolazione: String
    public let imponibileRata: String
    public let premioRata: String
    public let riduzioneRata: String
    public let totaleRata: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        pat: String,
        patControlCode: String,
        voce: String,
        employees: Int64,
        retribuzioni: String,
        quoteEsenti: String,
        imponibileRegolazione: String,
        premioRegolazione: String,
        riduzioneRegolazione: String,
        totaleRegolazione: String,
        imponibileRata: String,
        premioRata: String,
        riduzioneRata: String,
        totaleRata: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.pat = pat
        self.patControlCode = patControlCode
        self.voce = voce
        self.employees = employees
        self.retribuzioni = retribuzioni
        self.quoteEsenti = quoteEsenti
        self.imponibileRegolazione = imponibileRegolazione
        self.premioRegolazione = premioRegolazione
        self.riduzioneRegolazione = riduzioneRegolazione
        self.totaleRegolazione = totaleRegolazione
        self.imponibileRata = imponibileRata
        self.premioRata = premioRata
        self.riduzioneRata = riduzioneRata
        self.totaleRata = totaleRata
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pat = try container.decode(String.self, forKey: .pat)
        self.patControlCode = try container.decode(String.self, forKey: .patControlCode)
        self.voce = try container.decode(String.self, forKey: .voce)
        self.employees = try container.decode(Int64.self, forKey: .employees)
        self.retribuzioni = try container.decode(String.self, forKey: .retribuzioni)
        self.quoteEsenti = try container.decode(String.self, forKey: .quoteEsenti)
        self.imponibileRegolazione = try container.decode(String.self, forKey: .imponibileRegolazione)
        self.premioRegolazione = try container.decode(String.self, forKey: .premioRegolazione)
        self.riduzioneRegolazione = try container.decode(String.self, forKey: .riduzioneRegolazione)
        self.totaleRegolazione = try container.decode(String.self, forKey: .totaleRegolazione)
        self.imponibileRata = try container.decode(String.self, forKey: .imponibileRata)
        self.premioRata = try container.decode(String.self, forKey: .premioRata)
        self.riduzioneRata = try container.decode(String.self, forKey: .riduzioneRata)
        self.totaleRata = try container.decode(String.self, forKey: .totaleRata)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.pat, forKey: .pat)
        try container.encode(self.patControlCode, forKey: .patControlCode)
        try container.encode(self.voce, forKey: .voce)
        try container.encode(self.employees, forKey: .employees)
        try container.encode(self.retribuzioni, forKey: .retribuzioni)
        try container.encode(self.quoteEsenti, forKey: .quoteEsenti)
        try container.encode(self.imponibileRegolazione, forKey: .imponibileRegolazione)
        try container.encode(self.premioRegolazione, forKey: .premioRegolazione)
        try container.encode(self.riduzioneRegolazione, forKey: .riduzioneRegolazione)
        try container.encode(self.totaleRegolazione, forKey: .totaleRegolazione)
        try container.encode(self.imponibileRata, forKey: .imponibileRata)
        try container.encode(self.premioRata, forKey: .premioRata)
        try container.encode(self.riduzioneRata, forKey: .riduzioneRata)
        try container.encode(self.totaleRata, forKey: .totaleRata)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case pat
        case patControlCode
        case voce
        case employees
        case retribuzioni
        case quoteEsenti
        case imponibileRegolazione
        case premioRegolazione
        case riduzioneRegolazione
        case totaleRegolazione
        case imponibileRata
        case premioRata
        case riduzioneRata
        case totaleRata
    }
}