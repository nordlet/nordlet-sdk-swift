import Foundation

public struct InvoicesViewSalesResponseBuyer: Codable, Hashable, Sendable {
    public let name: String
    public let vatCode: Nullable<String>
    public let address: InvoicesViewSalesResponseBuyerAddress
    public let email: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        vatCode: Nullable<String>,
        address: InvoicesViewSalesResponseBuyerAddress,
        email: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.vatCode = vatCode
        self.address = address
        self.email = email
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.vatCode = try container.decode(Nullable<String>.self, forKey: .vatCode)
        self.address = try container.decode(InvoicesViewSalesResponseBuyerAddress.self, forKey: .address)
        self.email = try container.decode(Nullable<String>.self, forKey: .email)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.email, forKey: .email)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case vatCode
        case address
        case email
    }
}