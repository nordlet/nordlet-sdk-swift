import Foundation

public struct AccountSetPlanBillingResponsePlansValue: Codable, Hashable, Sendable {
    public let monthlyFeeEur: String
    public let includedInvoices: Int64
    public let invoiceOverageEur: String
    public let includedDatabaseBytes: Double
    public let includedFileBytes: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        monthlyFeeEur: String,
        includedInvoices: Int64,
        invoiceOverageEur: String,
        includedDatabaseBytes: Double,
        includedFileBytes: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.monthlyFeeEur = monthlyFeeEur
        self.includedInvoices = includedInvoices
        self.invoiceOverageEur = invoiceOverageEur
        self.includedDatabaseBytes = includedDatabaseBytes
        self.includedFileBytes = includedFileBytes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.monthlyFeeEur = try container.decode(String.self, forKey: .monthlyFeeEur)
        self.includedInvoices = try container.decode(Int64.self, forKey: .includedInvoices)
        self.invoiceOverageEur = try container.decode(String.self, forKey: .invoiceOverageEur)
        self.includedDatabaseBytes = try container.decode(Double.self, forKey: .includedDatabaseBytes)
        self.includedFileBytes = try container.decode(Double.self, forKey: .includedFileBytes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.monthlyFeeEur, forKey: .monthlyFeeEur)
        try container.encode(self.includedInvoices, forKey: .includedInvoices)
        try container.encode(self.invoiceOverageEur, forKey: .invoiceOverageEur)
        try container.encode(self.includedDatabaseBytes, forKey: .includedDatabaseBytes)
        try container.encode(self.includedFileBytes, forKey: .includedFileBytes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case monthlyFeeEur
        case includedInvoices
        case invoiceOverageEur
        case includedDatabaseBytes
        case includedFileBytes
    }
}