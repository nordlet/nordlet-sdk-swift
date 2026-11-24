import Foundation

public struct EeEmploymentRegisterGenerateDeclarationsResponse: Codable, Hashable, Sendable {
    public let fileName: String
    public let entryDate: CalendarDate
    public let xml: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fileName: String,
        entryDate: CalendarDate,
        xml: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fileName = fileName
        self.entryDate = entryDate
        self.xml = xml
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.entryDate = try container.decode(CalendarDate.self, forKey: .entryDate)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.entryDate, forKey: .entryDate)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fileName
        case entryDate
        case xml
        case warnings
    }
}