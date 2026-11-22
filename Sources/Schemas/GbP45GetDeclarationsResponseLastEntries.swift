import Foundation

public struct GbP45GetDeclarationsResponseLastEntries: Codable, Hashable, Sendable {
    public let weekNumber: Nullable<Double>
    public let monthNumber: Nullable<Double>
    public let totalPayToDate: CalendarDate
    public let totalTaxToDate: CalendarDate
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        weekNumber: Nullable<Double>,
        monthNumber: Nullable<Double>,
        totalPayToDate: CalendarDate,
        totalTaxToDate: CalendarDate,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.weekNumber = weekNumber
        self.monthNumber = monthNumber
        self.totalPayToDate = totalPayToDate
        self.totalTaxToDate = totalTaxToDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.weekNumber = try container.decode(Nullable<Double>.self, forKey: .weekNumber)
        self.monthNumber = try container.decode(Nullable<Double>.self, forKey: .monthNumber)
        self.totalPayToDate = try container.decode(CalendarDate.self, forKey: .totalPayToDate)
        self.totalTaxToDate = try container.decode(CalendarDate.self, forKey: .totalTaxToDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.weekNumber, forKey: .weekNumber)
        try container.encode(self.monthNumber, forKey: .monthNumber)
        try container.encode(self.totalPayToDate, forKey: .totalPayToDate)
        try container.encode(self.totalTaxToDate, forKey: .totalTaxToDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case weekNumber
        case monthNumber
        case totalPayToDate
        case totalTaxToDate
    }
}