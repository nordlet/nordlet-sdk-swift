import Foundation

public struct LiLohnlistenGenerateDeclarationsResponseRowsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let peid: String
    public let name: String
    public let vorname: String
    public let geburtsdatum: String
    public let strasse: String
    public let hausnummer: String
    public let plz: String
    public let ort: String
    public let wohnland: String
    public let brutto: String
    public let lohnsteuer: String
    public let abrechnungVon: String
    public let abrechnungBis: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        peid: String,
        name: String,
        vorname: String,
        geburtsdatum: String,
        strasse: String,
        hausnummer: String,
        plz: String,
        ort: String,
        wohnland: String,
        brutto: String,
        lohnsteuer: String,
        abrechnungVon: String,
        abrechnungBis: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.peid = peid
        self.name = name
        self.vorname = vorname
        self.geburtsdatum = geburtsdatum
        self.strasse = strasse
        self.hausnummer = hausnummer
        self.plz = plz
        self.ort = ort
        self.wohnland = wohnland
        self.brutto = brutto
        self.lohnsteuer = lohnsteuer
        self.abrechnungVon = abrechnungVon
        self.abrechnungBis = abrechnungBis
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.peid = try container.decode(String.self, forKey: .peid)
        self.name = try container.decode(String.self, forKey: .name)
        self.vorname = try container.decode(String.self, forKey: .vorname)
        self.geburtsdatum = try container.decode(String.self, forKey: .geburtsdatum)
        self.strasse = try container.decode(String.self, forKey: .strasse)
        self.hausnummer = try container.decode(String.self, forKey: .hausnummer)
        self.plz = try container.decode(String.self, forKey: .plz)
        self.ort = try container.decode(String.self, forKey: .ort)
        self.wohnland = try container.decode(String.self, forKey: .wohnland)
        self.brutto = try container.decode(String.self, forKey: .brutto)
        self.lohnsteuer = try container.decode(String.self, forKey: .lohnsteuer)
        self.abrechnungVon = try container.decode(String.self, forKey: .abrechnungVon)
        self.abrechnungBis = try container.decode(String.self, forKey: .abrechnungBis)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.peid, forKey: .peid)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.vorname, forKey: .vorname)
        try container.encode(self.geburtsdatum, forKey: .geburtsdatum)
        try container.encode(self.strasse, forKey: .strasse)
        try container.encode(self.hausnummer, forKey: .hausnummer)
        try container.encode(self.plz, forKey: .plz)
        try container.encode(self.ort, forKey: .ort)
        try container.encode(self.wohnland, forKey: .wohnland)
        try container.encode(self.brutto, forKey: .brutto)
        try container.encode(self.lohnsteuer, forKey: .lohnsteuer)
        try container.encode(self.abrechnungVon, forKey: .abrechnungVon)
        try container.encode(self.abrechnungBis, forKey: .abrechnungBis)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case peid
        case name
        case vorname
        case geburtsdatum
        case strasse
        case hausnummer
        case plz
        case ort
        case wohnland
        case brutto
        case lohnsteuer
        case abrechnungVon
        case abrechnungBis
        case warnings
    }
}