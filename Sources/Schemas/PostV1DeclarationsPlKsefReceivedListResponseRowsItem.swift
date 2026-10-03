import Foundation

public struct PostV1DeclarationsPlKsefReceivedListResponseRowsItem: Codable, Hashable, Sendable {
    public let ksefReferenceNumber: String
    public let invoiceNumber: Nullable<String>
    public let issuerNip: Nullable<String>
    public let issueDate: Nullable<String>
    public let acquisitionTimestamp: Nullable<String>
    public let grossAmount: Nullable<String>
    public let purchaseInvoiceId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ksefReferenceNumber: String,
        invoiceNumber: Nullable<String>,
        issuerNip: Nullable<String>,
        issueDate: Nullable<String>,
        acquisitionTimestamp: Nullable<String>,
        grossAmount: Nullable<String>,
        purchaseInvoiceId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ksefReferenceNumber = ksefReferenceNumber
        self.invoiceNumber = invoiceNumber
        self.issuerNip = issuerNip
        self.issueDate = issueDate
        self.acquisitionTimestamp = acquisitionTimestamp
        self.grossAmount = grossAmount
        self.purchaseInvoiceId = purchaseInvoiceId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ksefReferenceNumber = try container.decode(String.self, forKey: .ksefReferenceNumber)
        self.invoiceNumber = try container.decode(Nullable<String>.self, forKey: .invoiceNumber)
        self.issuerNip = try container.decode(Nullable<String>.self, forKey: .issuerNip)
        self.issueDate = try container.decode(Nullable<String>.self, forKey: .issueDate)
        self.acquisitionTimestamp = try container.decode(Nullable<String>.self, forKey: .acquisitionTimestamp)
        self.grossAmount = try container.decode(Nullable<String>.self, forKey: .grossAmount)
        self.purchaseInvoiceId = try container.decode(Nullable<String>.self, forKey: .purchaseInvoiceId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ksefReferenceNumber, forKey: .ksefReferenceNumber)
        try container.encode(self.invoiceNumber, forKey: .invoiceNumber)
        try container.encode(self.issuerNip, forKey: .issuerNip)
        try container.encode(self.issueDate, forKey: .issueDate)
        try container.encode(self.acquisitionTimestamp, forKey: .acquisitionTimestamp)
        try container.encode(self.grossAmount, forKey: .grossAmount)
        try container.encode(self.purchaseInvoiceId, forKey: .purchaseInvoiceId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ksefReferenceNumber
        case invoiceNumber
        case issuerNip
        case issueDate
        case acquisitionTimestamp
        case grossAmount
        case purchaseInvoiceId
    }
}