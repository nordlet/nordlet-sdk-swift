import Foundation

public struct PostV1ReportsOnlineSalesResponseRowsItem: Codable, Hashable, Sendable {
    public let channel: String
    public let orders: Int64
    public let fulfilled: Int64
    public let cancelled: Int64
    public let open: Int64
    public let net: String
    public let gross: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        channel: String,
        orders: Int64,
        fulfilled: Int64,
        cancelled: Int64,
        open: Int64,
        net: String,
        gross: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.channel = channel
        self.orders = orders
        self.fulfilled = fulfilled
        self.cancelled = cancelled
        self.open = open
        self.net = net
        self.gross = gross
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.channel = try container.decode(String.self, forKey: .channel)
        self.orders = try container.decode(Int64.self, forKey: .orders)
        self.fulfilled = try container.decode(Int64.self, forKey: .fulfilled)
        self.cancelled = try container.decode(Int64.self, forKey: .cancelled)
        self.open = try container.decode(Int64.self, forKey: .open)
        self.net = try container.decode(String.self, forKey: .net)
        self.gross = try container.decode(String.self, forKey: .gross)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.channel, forKey: .channel)
        try container.encode(self.orders, forKey: .orders)
        try container.encode(self.fulfilled, forKey: .fulfilled)
        try container.encode(self.cancelled, forKey: .cancelled)
        try container.encode(self.open, forKey: .open)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.gross, forKey: .gross)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case channel
        case orders
        case fulfilled
        case cancelled
        case open
        case net
        case gross
    }
}