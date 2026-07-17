import Foundation

public struct PostV1DeclarationsLtGpm313ComputeResponse: Codable, Hashable, Sendable {
    public let declarationYear: Int64
    public let declarationMonth: Int64
    public let runPeriod: Nullable<PostV1DeclarationsLtGpm313ComputeResponseRunPeriod>
    public let fields: [PostV1DeclarationsLtGpm313ComputeResponseFieldsItem]
    public let warnings: [String]
    public let notes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        declarationYear: Int64,
        declarationMonth: Int64,
        runPeriod: Nullable<PostV1DeclarationsLtGpm313ComputeResponseRunPeriod>,
        fields: [PostV1DeclarationsLtGpm313ComputeResponseFieldsItem],
        warnings: [String],
        notes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.declarationYear = declarationYear
        self.declarationMonth = declarationMonth
        self.runPeriod = runPeriod
        self.fields = fields
        self.warnings = warnings
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.declarationYear = try container.decode(Int64.self, forKey: .declarationYear)
        self.declarationMonth = try container.decode(Int64.self, forKey: .declarationMonth)
        self.runPeriod = try container.decode(Nullable<PostV1DeclarationsLtGpm313ComputeResponseRunPeriod>.self, forKey: .runPeriod)
        self.fields = try container.decode([PostV1DeclarationsLtGpm313ComputeResponseFieldsItem].self, forKey: .fields)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.declarationYear, forKey: .declarationYear)
        try container.encode(self.declarationMonth, forKey: .declarationMonth)
        try container.encode(self.runPeriod, forKey: .runPeriod)
        try container.encode(self.fields, forKey: .fields)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case declarationYear
        case declarationMonth
        case runPeriod
        case fields
        case warnings
        case notes
    }
}