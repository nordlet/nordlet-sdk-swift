import Foundation

public struct Us941GetDeclarationsResponseScheduleBItem: Codable, Hashable, Sendable {
    public let payDate: CalendarDate
    public let liability: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        payDate: CalendarDate,
        liability: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.payDate = payDate
        self.liability = liability
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.payDate = try container.decode(CalendarDate.self, forKey: .payDate)
        self.liability = try container.decode(String.self, forKey: .liability)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.payDate, forKey: .payDate)
        try container.encode(self.liability, forKey: .liability)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case payDate
        case liability
    }
}