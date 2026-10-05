import Foundation

public struct DeBeitragsnachweisGenerateDeclarationsResponseRecordsItem: Codable, Hashable, Sendable {
    public let betriebsnummerKrankenkasse: String
    public let faelligkeitstag: String
    public let kvAllgemein: String
    public let kvZusatzbeitrag: String
    public let pauschsteuer: String
    public let beitragssatzAllgemein: String
    public let summe: String
    public let positionen: [DeBeitragsnachweisGenerateDeclarationsResponseRecordsItemPositionenItem]
    public let record: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        betriebsnummerKrankenkasse: String,
        faelligkeitstag: String,
        kvAllgemein: String,
        kvZusatzbeitrag: String,
        pauschsteuer: String,
        beitragssatzAllgemein: String,
        summe: String,
        positionen: [DeBeitragsnachweisGenerateDeclarationsResponseRecordsItemPositionenItem],
        record: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.betriebsnummerKrankenkasse = betriebsnummerKrankenkasse
        self.faelligkeitstag = faelligkeitstag
        self.kvAllgemein = kvAllgemein
        self.kvZusatzbeitrag = kvZusatzbeitrag
        self.pauschsteuer = pauschsteuer
        self.beitragssatzAllgemein = beitragssatzAllgemein
        self.summe = summe
        self.positionen = positionen
        self.record = record
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.betriebsnummerKrankenkasse = try container.decode(String.self, forKey: .betriebsnummerKrankenkasse)
        self.faelligkeitstag = try container.decode(String.self, forKey: .faelligkeitstag)
        self.kvAllgemein = try container.decode(String.self, forKey: .kvAllgemein)
        self.kvZusatzbeitrag = try container.decode(String.self, forKey: .kvZusatzbeitrag)
        self.pauschsteuer = try container.decode(String.self, forKey: .pauschsteuer)
        self.beitragssatzAllgemein = try container.decode(String.self, forKey: .beitragssatzAllgemein)
        self.summe = try container.decode(String.self, forKey: .summe)
        self.positionen = try container.decode([DeBeitragsnachweisGenerateDeclarationsResponseRecordsItemPositionenItem].self, forKey: .positionen)
        self.record = try container.decode(String.self, forKey: .record)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.betriebsnummerKrankenkasse, forKey: .betriebsnummerKrankenkasse)
        try container.encode(self.faelligkeitstag, forKey: .faelligkeitstag)
        try container.encode(self.kvAllgemein, forKey: .kvAllgemein)
        try container.encode(self.kvZusatzbeitrag, forKey: .kvZusatzbeitrag)
        try container.encode(self.pauschsteuer, forKey: .pauschsteuer)
        try container.encode(self.beitragssatzAllgemein, forKey: .beitragssatzAllgemein)
        try container.encode(self.summe, forKey: .summe)
        try container.encode(self.positionen, forKey: .positionen)
        try container.encode(self.record, forKey: .record)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case betriebsnummerKrankenkasse
        case faelligkeitstag
        case kvAllgemein
        case kvZusatzbeitrag
        case pauschsteuer
        case beitragssatzAllgemein
        case summe
        case positionen
        case record
    }
}