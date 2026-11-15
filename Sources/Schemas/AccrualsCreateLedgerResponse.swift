import Foundation

public struct AccrualsCreateLedgerResponse: Codable, Hashable, Sendable {
    public let id: String
    public let reversalId: String
    public let date: CalendarDate
    public let reversalDate: CalendarDate
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        reversalId: String,
        date: CalendarDate,
        reversalDate: CalendarDate,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.reversalId = reversalId
        self.date = date
        self.reversalDate = reversalDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.reversalId = try container.decode(String.self, forKey: .reversalId)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.reversalDate = try container.decode(CalendarDate.self, forKey: .reversalDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.reversalId, forKey: .reversalId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.reversalDate, forKey: .reversalDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case reversalId
        case date
        case reversalDate
    }
}