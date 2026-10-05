import Foundation

public struct LtSdGenerateDeclarationsResponse: Codable, Hashable, Sendable {
    public let type: LtSdGenerateDeclarationsResponseType
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let rows: [LtSdGenerateDeclarationsResponseRowsItem]
    public let warnings: [String]
    public let notes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        type: LtSdGenerateDeclarationsResponseType,
        fromDate: CalendarDate,
        toDate: CalendarDate,
        rows: [LtSdGenerateDeclarationsResponseRowsItem],
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
        self.type = try container.decode(LtSdGenerateDeclarationsResponseType.self, forKey: .type)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.rows = try container.decode([LtSdGenerateDeclarationsResponseRowsItem].self, forKey: .rows)
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