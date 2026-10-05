import Foundation

public struct DeReturnsGenerateDeclarationsResponse: Codable, Hashable, Sendable {
    public let ruleKey: String
    public let period: String
    public let fileName: String
    public let mimeType: String
    public let variant: Nullable<String>
    public let content: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ruleKey: String,
        period: String,
        fileName: String,
        mimeType: String,
        variant: Nullable<String>,
        content: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ruleKey = ruleKey
        self.period = period
        self.fileName = fileName
        self.mimeType = mimeType
        self.variant = variant
        self.content = content
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ruleKey = try container.decode(String.self, forKey: .ruleKey)
        self.period = try container.decode(String.self, forKey: .period)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.mimeType = try container.decode(String.self, forKey: .mimeType)
        self.variant = try container.decode(Nullable<String>.self, forKey: .variant)
        self.content = try container.decode(String.self, forKey: .content)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ruleKey, forKey: .ruleKey)
        try container.encode(self.period, forKey: .period)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.mimeType, forKey: .mimeType)
        try container.encode(self.variant, forKey: .variant)
        try container.encode(self.content, forKey: .content)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ruleKey
        case period
        case fileName
        case mimeType
        case variant
        case content
        case warnings
    }
}