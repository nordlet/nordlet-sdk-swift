import Foundation

public struct SubmissionsCorrectionPreviewDeclarationsResponseChangesItem: Codable, Hashable, Sendable {
    public let field: Nullable<String>
    public let line: Nullable<Int64>
    public let filed: Nullable<String>
    public let current: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: Nullable<String>,
        line: Nullable<Int64>,
        filed: Nullable<String>,
        current: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.line = line
        self.filed = filed
        self.current = current
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(Nullable<String>.self, forKey: .field)
        self.line = try container.decode(Nullable<Int64>.self, forKey: .line)
        self.filed = try container.decode(Nullable<String>.self, forKey: .filed)
        self.current = try container.decode(Nullable<String>.self, forKey: .current)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.field, forKey: .field)
        try container.encode(self.line, forKey: .line)
        try container.encode(self.filed, forKey: .filed)
        try container.encode(self.current, forKey: .current)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case line
        case filed
        case current
    }
}