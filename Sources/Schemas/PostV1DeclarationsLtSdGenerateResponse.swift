import Foundation

public struct PostV1DeclarationsLtSdGenerateResponse: Codable, Hashable, Sendable {
    public let type: PostV1DeclarationsLtSdGenerateResponseType
    public let fromDate: String
    public let toDate: String
    public let rows: [PostV1DeclarationsLtSdGenerateResponseRowsItem]
    public let warnings: [String]
    public let notes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        type: PostV1DeclarationsLtSdGenerateResponseType,
        fromDate: String,
        toDate: String,
        rows: [PostV1DeclarationsLtSdGenerateResponseRowsItem],
        warnings: [String],
        notes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.type = type
        self.fromDate = fromDate
        self.toDate = toDate
        self.rows = rows
        self.warnings = warnings
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(PostV1DeclarationsLtSdGenerateResponseType.self, forKey: .type)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.rows = try container.decode([PostV1DeclarationsLtSdGenerateResponseRowsItem].self, forKey: .rows)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case fromDate
        case toDate
        case rows
        case warnings
        case notes
    }
}