import Foundation

public struct PostV1ReportsSieResponse: Codable, Hashable, Sendable {
    public let fileName: String
    public let contentType: String
    public let data: String
    public let accounts: Int64
    public let vouchers: Int64
    public let source: String
    public let warnings: [String]
    public let notes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fileName: String,
        contentType: String,
        data: String,
        accounts: Int64,
        vouchers: Int64,
        source: String,
        warnings: [String],
        notes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fileName = fileName
        self.contentType = contentType
        self.data = data
        self.accounts = accounts
        self.vouchers = vouchers
        self.source = source
        self.warnings = warnings
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.contentType = try container.decode(String.self, forKey: .contentType)
        self.data = try container.decode(String.self, forKey: .data)
        self.accounts = try container.decode(Int64.self, forKey: .accounts)
        self.vouchers = try container.decode(Int64.self, forKey: .vouchers)
        self.source = try container.decode(String.self, forKey: .source)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.contentType, forKey: .contentType)
        try container.encode(self.data, forKey: .data)
        try container.encode(self.accounts, forKey: .accounts)
        try container.encode(self.vouchers, forKey: .vouchers)
        try container.encode(self.source, forKey: .source)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fileName
        case contentType
        case data
        case accounts
        case vouchers
        case source
        case warnings
        case notes
    }
}