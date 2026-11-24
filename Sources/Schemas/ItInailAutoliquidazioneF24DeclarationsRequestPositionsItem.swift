import Foundation

public struct ItInailAutoliquidazioneF24DeclarationsRequestPositionsItem: Codable, Hashable, Sendable {
    public let pat: String
    public let patControlCode: String
    public let voce: String
    public let tassoRegolazione: String
    public let tassoRata: String
    public let riduzioneRegolazione: String?
    public let riduzioneRata: String?
    public let quoteEsenti: String?
    public let retribuzioniRata: String?
    public let employeeIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        pat: String,
        patControlCode: String,
        voce: String,
        tassoRegolazione: String,
        tassoRata: String,
        riduzioneRegolazione: String? = nil,
        riduzioneRata: String? = nil,
        quoteEsenti: String? = nil,
        retribuzioniRata: String? = nil,
        employeeIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.pat = pat
        self.patControlCode = patControlCode
        self.voce = voce
        self.tassoRegolazione = tassoRegolazione
        self.tassoRata = tassoRata
        self.riduzioneRegolazione = riduzioneRegolazione
        self.riduzioneRata = riduzioneRata
        self.quoteEsenti = quoteEsenti
        self.retribuzioniRata = retribuzioniRata
        self.employeeIds = employeeIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pat = try container.decode(String.self, forKey: .pat)
        self.patControlCode = try container.decode(String.self, forKey: .patControlCode)
        self.voce = try container.decode(String.self, forKey: .voce)
        self.tassoRegolazione = try container.decode(String.self, forKey: .tassoRegolazione)
        self.tassoRata = try container.decode(String.self, forKey: .tassoRata)
        self.riduzioneRegolazione = try container.decodeIfPresent(String.self, forKey: .riduzioneRegolazione)
        self.riduzioneRata = try container.decodeIfPresent(String.self, forKey: .riduzioneRata)
        self.quoteEsenti = try container.decodeIfPresent(String.self, forKey: .quoteEsenti)
        self.retribuzioniRata = try container.decodeIfPresent(String.self, forKey: .retribuzioniRata)
        self.employeeIds = try container.decodeIfPresent([String].self, forKey: .employeeIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.pat, forKey: .pat)
        try container.encode(self.patControlCode, forKey: .patControlCode)
        try container.encode(self.voce, forKey: .voce)
        try container.encode(self.tassoRegolazione, forKey: .tassoRegolazione)
        try container.encode(self.tassoRata, forKey: .tassoRata)
        try container.encodeIfPresent(self.riduzioneRegolazione, forKey: .riduzioneRegolazione)
        try container.encodeIfPresent(self.riduzioneRata, forKey: .riduzioneRata)
        try container.encodeIfPresent(self.quoteEsenti, forKey: .quoteEsenti)
        try container.encodeIfPresent(self.retribuzioniRata, forKey: .retribuzioniRata)
        try container.encodeIfPresent(self.employeeIds, forKey: .employeeIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case pat
        case patControlCode
        case voce
        case tassoRegolazione
        case tassoRata
        case riduzioneRegolazione
        case riduzioneRata
        case quoteEsenti
        case retribuzioniRata
        case employeeIds
    }
}