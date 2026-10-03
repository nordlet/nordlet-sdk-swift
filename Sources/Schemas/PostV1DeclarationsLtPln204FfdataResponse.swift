import Foundation

public struct PostV1DeclarationsLtPln204FfdataResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let fileName: String
    public let xml: String
    public let ratePercent: String
    public let rateCode: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        fileName: String,
        xml: String,
        ratePercent: String,
        rateCode: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.fileName = fileName
        self.xml = xml
        self.ratePercent = ratePercent
        self.rateCode = rateCode
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.ratePercent = try container.decode(String.self, forKey: .ratePercent)
        self.rateCode = try container.decode(String.self, forKey: .rateCode)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.ratePercent, forKey: .ratePercent)
        try container.encode(self.rateCode, forKey: .rateCode)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case fileName
        case xml
        case ratePercent
        case rateCode
        case warnings
    }
}