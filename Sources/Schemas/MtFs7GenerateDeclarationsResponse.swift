import Foundation

public struct MtFs7GenerateDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let boxes: [MtFs7GenerateDeclarationsResponseBoxesItem]
    public let leftToPayer: [String]
    public let fileName: String
    /// The working copy, base64
    public let pdf: String
    public let warnings: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        boxes: [MtFs7GenerateDeclarationsResponseBoxesItem],
        leftToPayer: [String],
        fileName: String,
        pdf: String,
        warnings: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.boxes = boxes
        self.leftToPayer = leftToPayer
        self.fileName = fileName
        self.pdf = pdf
        self.warnings = warnings
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.boxes = try container.decode([MtFs7GenerateDeclarationsResponseBoxesItem].self, forKey: .boxes)
        self.leftToPayer = try container.decode([String].self, forKey: .leftToPayer)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.pdf = try container.decode(String.self, forKey: .pdf)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.boxes, forKey: .boxes)
        try container.encode(self.leftToPayer, forKey: .leftToPayer)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.pdf, forKey: .pdf)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case boxes
        case leftToPayer
        case fileName
        case pdf
        case warnings
        case source
    }
}