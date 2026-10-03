import Foundation

public struct PostV1DeclarationsDeDeuevGenerateResponseRecordsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let name: String
    public let abgabegrund: String
    public let versicherungsnummer: String
    public let betriebsnummerKrankenkasse: String
    public let personengruppe: String
    public let beitragsgruppe: String
    public let zeitraumBeginn: String
    public let zeitraumEnde: Nullable<String>
    public let entgelt: String
    public let record: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        name: String,
        abgabegrund: String,
        versicherungsnummer: String,
        betriebsnummerKrankenkasse: String,
        personengruppe: String,
        beitragsgruppe: String,
        zeitraumBeginn: String,
        zeitraumEnde: Nullable<String>,
        entgelt: String,
        record: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.name = name
        self.abgabegrund = abgabegrund
        self.versicherungsnummer = versicherungsnummer
        self.betriebsnummerKrankenkasse = betriebsnummerKrankenkasse
        self.personengruppe = personengruppe
        self.beitragsgruppe = beitragsgruppe
        self.zeitraumBeginn = zeitraumBeginn
        self.zeitraumEnde = zeitraumEnde
        self.entgelt = entgelt
        self.record = record
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.name = try container.decode(String.self, forKey: .name)
        self.abgabegrund = try container.decode(String.self, forKey: .abgabegrund)
        self.versicherungsnummer = try container.decode(String.self, forKey: .versicherungsnummer)
        self.betriebsnummerKrankenkasse = try container.decode(String.self, forKey: .betriebsnummerKrankenkasse)
        self.personengruppe = try container.decode(String.self, forKey: .personengruppe)
        self.beitragsgruppe = try container.decode(String.self, forKey: .beitragsgruppe)
        self.zeitraumBeginn = try container.decode(String.self, forKey: .zeitraumBeginn)
        self.zeitraumEnde = try container.decode(Nullable<String>.self, forKey: .zeitraumEnde)
        self.entgelt = try container.decode(String.self, forKey: .entgelt)
        self.record = try container.decode(String.self, forKey: .record)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.abgabegrund, forKey: .abgabegrund)
        try container.encode(self.versicherungsnummer, forKey: .versicherungsnummer)
        try container.encode(self.betriebsnummerKrankenkasse, forKey: .betriebsnummerKrankenkasse)
        try container.encode(self.personengruppe, forKey: .personengruppe)
        try container.encode(self.beitragsgruppe, forKey: .beitragsgruppe)
        try container.encode(self.zeitraumBeginn, forKey: .zeitraumBeginn)
        try container.encode(self.zeitraumEnde, forKey: .zeitraumEnde)
        try container.encode(self.entgelt, forKey: .entgelt)
        try container.encode(self.record, forKey: .record)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case name
        case abgabegrund
        case versicherungsnummer
        case betriebsnummerKrankenkasse
        case personengruppe
        case beitragsgruppe
        case zeitraumBeginn
        case zeitraumEnde
        case entgelt
        case record
        case warnings
    }
}