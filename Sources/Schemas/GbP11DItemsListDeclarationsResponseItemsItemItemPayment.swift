import Foundation

public struct GbP11DItemsListDeclarationsResponseItemsItemItemPayment: Codable, Hashable, Sendable {
    public let payment: GbP11DItemsListDeclarationsResponseItemsItemItemPaymentPayment
    public let otherDescription: String?
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        payment: GbP11DItemsListDeclarationsResponseItemsItemItemPaymentPayment,
        otherDescription: String? = nil,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.payment = payment
        self.otherDescription = otherDescription
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.payment = try container.decode(GbP11DItemsListDeclarationsResponseItemsItemItemPaymentPayment.self, forKey: .payment)
        self.otherDescription = try container.decodeIfPresent(String.self, forKey: .otherDescription)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.payment, forKey: .payment)
        try container.encodeIfPresent(self.otherDescription, forKey: .otherDescription)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case payment
        case otherDescription
        case amount
    }
}