import Foundation

public struct LiLohndeklarationGenerateDeclarationsResponseRowsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let versichertennummer: String
    public let vorname: String
    public let name: String
    public let geschlecht: String
    public let heimatstaat: String
    public let eintrittsdatum: String
    public let austrittsdatum: String
    public let beschaeftigtVon: String
    public let beschaeftigtBis: String
    public let beschaeftigungsgrad: String
    public let ahvLohn: String
    public let alv: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        versichertennummer: String,
        vorname: String,
        name: String,
        geschlecht: String,
        heimatstaat: String,
        eintrittsdatum: String,
        austrittsdatum: String,
        beschaeftigtVon: String,
        beschaeftigtBis: String,
        beschaeftigungsgrad: String,
        ahvLohn: String,
        alv: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.versichertennummer = versichertennummer
        self.vorname = vorname
        self.name = name
        self.geschlecht = geschlecht
        self.heimatstaat = heimatstaat
        self.eintrittsdatum = eintrittsdatum
        self.austrittsdatum = austrittsdatum
        self.beschaeftigtVon = beschaeftigtVon
        self.beschaeftigtBis = beschaeftigtBis
        self.beschaeftigungsgrad = beschaeftigungsgrad
        self.ahvLohn = ahvLohn
        self.alv = alv
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.versichertennummer = try container.decode(String.self, forKey: .versichertennummer)
        self.vorname = try container.decode(String.self, forKey: .vorname)
        self.name = try container.decode(String.self, forKey: .name)
        self.geschlecht = try container.decode(String.self, forKey: .geschlecht)
        self.heimatstaat = try container.decode(String.self, forKey: .heimatstaat)
        self.eintrittsdatum = try container.decode(String.self, forKey: .eintrittsdatum)
        self.austrittsdatum = try container.decode(String.self, forKey: .austrittsdatum)
        self.beschaeftigtVon = try container.decode(String.self, forKey: .beschaeftigtVon)
        self.beschaeftigtBis = try container.decode(String.self, forKey: .beschaeftigtBis)
        self.beschaeftigungsgrad = try container.decode(String.self, forKey: .beschaeftigungsgrad)
        self.ahvLohn = try container.decode(String.self, forKey: .ahvLohn)
        self.alv = try container.decode(String.self, forKey: .alv)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.versichertennummer, forKey: .versichertennummer)
        try container.encode(self.vorname, forKey: .vorname)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.geschlecht, forKey: .geschlecht)
        try container.encode(self.heimatstaat, forKey: .heimatstaat)
        try container.encode(self.eintrittsdatum, forKey: .eintrittsdatum)
        try container.encode(self.austrittsdatum, forKey: .austrittsdatum)
        try container.encode(self.beschaeftigtVon, forKey: .beschaeftigtVon)
        try container.encode(self.beschaeftigtBis, forKey: .beschaeftigtBis)
        try container.encode(self.beschaeftigungsgrad, forKey: .beschaeftigungsgrad)
        try container.encode(self.ahvLohn, forKey: .ahvLohn)
        try container.encode(self.alv, forKey: .alv)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case versichertennummer
        case vorname
        case name
        case geschlecht
        case heimatstaat
        case eintrittsdatum
        case austrittsdatum
        case beschaeftigtVon
        case beschaeftigtBis
        case beschaeftigungsgrad
        case ahvLohn
        case alv
        case warnings
    }
}