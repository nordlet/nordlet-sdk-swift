import Foundation

public struct PostV1ReportsPartnerBalancesResponseRowsItem: Codable, Hashable, Sendable {
    public let partnerId: String
    public let partnerName: String
    public let receivable: String
    public let payable: String
    public let net: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        partnerId: String,
        partnerName: String,
        receivable: String,
        payable: String,
        net: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.receivable = receivable
        self.payable = payable
        self.net = net
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.receivable = try container.decode(String.self, forKey: .receivable)
        self.payable = try container.decode(String.self, forKey: .payable)
        self.net = try container.decode(String.self, forKey: .net)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.receivable, forKey: .receivable)
        try container.encode(self.payable, forKey: .payable)
        try container.encode(self.net, forKey: .net)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case partnerId
        case partnerName
        case receivable
        case payable
        case net
    }
}