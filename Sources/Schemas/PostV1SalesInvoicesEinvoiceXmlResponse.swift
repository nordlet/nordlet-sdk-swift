import Foundation

public struct PostV1SalesInvoicesEinvoiceXmlResponse: Codable, Hashable, Sendable {
    public let format: String
    public let system: String
    public let fileName: String
    public let contentType: String
    public let data: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        format: String,
        system: String,
        fileName: String,
        contentType: String,
        data: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.format = format
        self.system = system
        self.fileName = fileName
        self.contentType = contentType
        self.data = data
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.format = try container.decode(String.self, forKey: .format)
        self.system = try container.decode(String.self, forKey: .system)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.contentType = try container.decode(String.self, forKey: .contentType)
        self.data = try container.decode(String.self, forKey: .data)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.format, forKey: .format)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.contentType, forKey: .contentType)
        try container.encode(self.data, forKey: .data)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case format
        case system
        case fileName
        case contentType
        case data
        case warnings
    }
}