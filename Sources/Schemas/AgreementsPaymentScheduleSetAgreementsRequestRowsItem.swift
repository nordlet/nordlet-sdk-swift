import Foundation

public struct AgreementsPaymentScheduleSetAgreementsRequestRowsItem: Codable, Hashable, Sendable {
    public let dueDate: CalendarDate
    public let principal: String
    public let interest: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dueDate: CalendarDate,
        principal: String,
        interest: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dueDate = dueDate
        self.principal = principal
        self.interest = interest
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dueDate = try container.decode(CalendarDate.self, forKey: .dueDate)
        self.principal = try container.decode(String.self, forKey: .principal)
        self.interest = try container.decode(String.self, forKey: .interest)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.principal, forKey: .principal)
        try container.encode(self.interest, forKey: .interest)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dueDate
        case principal
        case interest
    }
}