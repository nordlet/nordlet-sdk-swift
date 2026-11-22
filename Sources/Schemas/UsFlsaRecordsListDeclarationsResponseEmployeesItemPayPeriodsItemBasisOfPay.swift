import Foundation

public struct UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItemBasisOfPay: Codable, Hashable, Sendable {
    public let salaryType: String
    public let rate: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        salaryType: String,
        rate: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.salaryType = salaryType
        self.rate = rate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.salaryType = try container.decode(String.self, forKey: .salaryType)
        self.rate = try container.decode(String.self, forKey: .rate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.salaryType, forKey: .salaryType)
        try container.encode(self.rate, forKey: .rate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case salaryType
        case rate
    }
}