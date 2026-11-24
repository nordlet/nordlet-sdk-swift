import Foundation

public struct AgreementsPaymentScheduleGetAgreementsResponseRowsItem: Codable, Hashable, Sendable {
    public let dueDate: CalendarDate
    public let principal: String
    public let interest: String
    public let total: String
    public let principalOutstanding: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dueDate: CalendarDate,
        principal: String,
        interest: String,
        total: String,
        principalOutstanding: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dueDate = dueDate
        self.principal = principal
        self.interest = interest
        self.total = total
        self.principalOutstanding = principalOutstanding
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dueDate = try container.decode(CalendarDate.self, forKey: .dueDate)
        self.principal = try container.decode(String.self, forKey: .principal)
        self.interest = try container.decode(String.self, forKey: .interest)
        self.total = try container.decode(String.self, forKey: .total)
        self.principalOutstanding = try container.decode(Nullable<String>.self, forKey: .principalOutstanding)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.principal, forKey: .principal)
        try container.encode(self.interest, forKey: .interest)
        try container.encode(self.total, forKey: .total)
        try container.encode(self.principalOutstanding, forKey: .principalOutstanding)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dueDate
        case principal
        case interest
        case total
        case principalOutstanding
    }
}