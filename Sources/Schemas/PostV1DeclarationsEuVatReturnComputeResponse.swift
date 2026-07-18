import Foundation

public struct PostV1DeclarationsEuVatReturnComputeResponse: Codable, Hashable, Sendable {
    public let countryCode: String
    public let formKey: String
    public let formName: String
    public let frequency: PostV1DeclarationsEuVatReturnComputeResponseFrequency
    public let periodStart: String
    public let periodEnd: String
    public let boxes: [PostV1DeclarationsEuVatReturnComputeResponseBoxesItem]
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        formKey: String,
        formName: String,
        frequency: PostV1DeclarationsEuVatReturnComputeResponseFrequency,
        periodStart: String,
        periodEnd: String,
        boxes: [PostV1DeclarationsEuVatReturnComputeResponseBoxesItem],
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.formKey = formKey
        self.formName = formName
        self.frequency = frequency
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.boxes = boxes
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.formKey = try container.decode(String.self, forKey: .formKey)
        self.formName = try container.decode(String.self, forKey: .formName)
        self.frequency = try container.decode(PostV1DeclarationsEuVatReturnComputeResponseFrequency.self, forKey: .frequency)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.boxes = try container.decode([PostV1DeclarationsEuVatReturnComputeResponseBoxesItem].self, forKey: .boxes)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.formKey, forKey: .formKey)
        try container.encode(self.formName, forKey: .formName)
        try container.encode(self.frequency, forKey: .frequency)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.boxes, forKey: .boxes)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case formKey
        case formName
        case frequency
        case periodStart
        case periodEnd
        case boxes
        case warnings
        case notes
        case source
    }
}