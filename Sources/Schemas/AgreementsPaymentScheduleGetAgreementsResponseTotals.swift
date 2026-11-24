import Foundation

public struct AgreementsPaymentScheduleGetAgreementsResponseTotals: Codable, Hashable, Sendable {
    public let principal: String
    public let interest: String
    public let total: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        principal: String,
        interest: String,
        total: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.principal = principal
        self.interest = interest
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.principal = try container.decode(String.self, forKey: .principal)
        self.interest = try container.decode(String.self, forKey: .interest)
        self.total = try container.decode(String.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.principal, forKey: .principal)
        try container.encode(self.interest, forKey: .interest)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case principal
        case interest
        case total
    }
}