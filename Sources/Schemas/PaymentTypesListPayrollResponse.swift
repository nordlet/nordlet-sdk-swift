import Foundation

public struct PaymentTypesListPayrollResponse: Codable, Hashable, Sendable {
    public let countryCode: String
    public let defaultPaymentType: Nullable<String>
    public let rows: [PaymentTypesListPayrollResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        defaultPaymentType: Nullable<String>,
        rows: [PaymentTypesListPayrollResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.defaultPaymentType = defaultPaymentType
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.defaultPaymentType = try container.decode(Nullable<String>.self, forKey: .defaultPaymentType)
        self.rows = try container.decode([PaymentTypesListPayrollResponseRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.defaultPaymentType, forKey: .defaultPaymentType)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case defaultPaymentType
        case rows
    }
}