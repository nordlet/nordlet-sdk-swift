import Foundation

public struct InvoicesCardPaymentsDisconnectSalesResponse: Codable, Hashable, Sendable {
    public let connected: Bool
    public let chargesEnabled: Bool
    public let accountId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        connected: Bool,
        chargesEnabled: Bool,
        accountId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.connected = connected
        self.chargesEnabled = chargesEnabled
        self.accountId = accountId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.connected = try container.decode(Bool.self, forKey: .connected)
        self.chargesEnabled = try container.decode(Bool.self, forKey: .chargesEnabled)
        self.accountId = try container.decode(Nullable<String>.self, forKey: .accountId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.connected, forKey: .connected)
        try container.encode(self.chargesEnabled, forKey: .chargesEnabled)
        try container.encode(self.accountId, forKey: .accountId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case connected
        case chargesEnabled
        case accountId
    }
}