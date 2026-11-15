import Foundation

public struct CompaniesContextAccountResponseFilingsItem: Codable, Hashable, Sendable {
    public let key: String
    public let ruleKey: String
    public let period: String
    public let title: String
    public let dueDate: CalendarDate
    public let system: Nullable<String>
    public let canDownload: Bool
    public let canSubmit: Bool
    public let missingSettings: Nullable<CompaniesContextAccountResponseFilingsItemMissingSettings>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        key: String,
        ruleKey: String,
        period: String,
        title: String,
        dueDate: CalendarDate,
        system: Nullable<String>,
        canDownload: Bool,
        canSubmit: Bool,
        missingSettings: Nullable<CompaniesContextAccountResponseFilingsItemMissingSettings>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.key = key
        self.ruleKey = ruleKey
        self.period = period
        self.title = title
        self.dueDate = dueDate
        self.system = system
        self.canDownload = canDownload
        self.canSubmit = canSubmit
        self.missingSettings = missingSettings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.key = try container.decode(String.self, forKey: .key)
        self.ruleKey = try container.decode(String.self, forKey: .ruleKey)
        self.period = try container.decode(String.self, forKey: .period)
        self.title = try container.decode(String.self, forKey: .title)
        self.dueDate = try container.decode(CalendarDate.self, forKey: .dueDate)
        self.system = try container.decode(Nullable<String>.self, forKey: .system)
        self.canDownload = try container.decode(Bool.self, forKey: .canDownload)
        self.canSubmit = try container.decode(Bool.self, forKey: .canSubmit)
        self.missingSettings = try container.decode(Nullable<CompaniesContextAccountResponseFilingsItemMissingSettings>.self, forKey: .missingSettings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.key, forKey: .key)
        try container.encode(self.ruleKey, forKey: .ruleKey)
        try container.encode(self.period, forKey: .period)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.canDownload, forKey: .canDownload)
        try container.encode(self.canSubmit, forKey: .canSubmit)
        try container.encode(self.missingSettings, forKey: .missingSettings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case ruleKey
        case period
        case title
        case dueDate
        case system
        case canDownload
        case canSubmit
        case missingSettings
    }
}