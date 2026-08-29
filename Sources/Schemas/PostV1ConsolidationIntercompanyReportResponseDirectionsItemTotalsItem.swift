import Foundation

public struct PostV1ConsolidationIntercompanyReportResponseDirectionsItemTotalsItem: Codable, Hashable, Sendable {
    public let currency: String
    public let salesGross: String
    public let purchasesGross: String
    public let grossDifference: String
    public let openReceivable: String
    public let openPayable: String
    public let openDifference: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currency: String,
        salesGross: String,
        purchasesGross: String,
        grossDifference: String,
        openReceivable: String,
        openPayable: String,
        openDifference: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currency = currency
        self.salesGross = salesGross
        self.purchasesGross = purchasesGross
        self.grossDifference = grossDifference
        self.openReceivable = openReceivable
        self.openPayable = openPayable
        self.openDifference = openDifference
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.salesGross = try container.decode(String.self, forKey: .salesGross)
        self.purchasesGross = try container.decode(String.self, forKey: .purchasesGross)
        self.grossDifference = try container.decode(String.self, forKey: .grossDifference)
        self.openReceivable = try container.decode(String.self, forKey: .openReceivable)
        self.openPayable = try container.decode(String.self, forKey: .openPayable)
        self.openDifference = try container.decode(String.self, forKey: .openDifference)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.salesGross, forKey: .salesGross)
        try container.encode(self.purchasesGross, forKey: .purchasesGross)
        try container.encode(self.grossDifference, forKey: .grossDifference)
        try container.encode(self.openReceivable, forKey: .openReceivable)
        try container.encode(self.openPayable, forKey: .openPayable)
        try container.encode(self.openDifference, forKey: .openDifference)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currency
        case salesGross
        case purchasesGross
        case grossDifference
        case openReceivable
        case openPayable
        case openDifference
    }
}