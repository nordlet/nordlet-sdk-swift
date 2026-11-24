import Foundation

public struct ItInailAutoliquidazioneComputeDeclarationsResponseInstalmentsItem: Codable, Hashable, Sendable {
    public let number: Int64
    public let dueDate: CalendarDate
    public let amount: String
    public let interest: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        number: Int64,
        dueDate: CalendarDate,
        amount: String,
        interest: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.number = number
        self.dueDate = dueDate
        self.amount = amount
        self.interest = interest
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.number = try container.decode(Int64.self, forKey: .number)
        self.dueDate = try container.decode(CalendarDate.self, forKey: .dueDate)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.interest = try container.decode(Nullable<String>.self, forKey: .interest)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.interest, forKey: .interest)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case number
        case dueDate
        case amount
        case interest
    }
}