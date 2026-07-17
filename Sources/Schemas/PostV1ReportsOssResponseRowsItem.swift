import Foundation

public struct PostV1ReportsOssResponseRowsItem: Codable, Hashable, Sendable {
    public let countryCode: String
    public let vatRatePercent: String
    public let net: String
    public let vat: String
    public let documents: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        vatRatePercent: String,
        net: String,
        vat: String,
        documents: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.vatRatePercent = vatRatePercent
        self.net = net
        self.vat = vat
        self.documents = documents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.vatRatePercent = try container.decode(String.self, forKey: .vatRatePercent)
        self.net = try container.decode(String.self, forKey: .net)
        self.vat = try container.decode(String.self, forKey: .vat)
        self.documents = try container.decode(Int64.self, forKey: .documents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.vat, forKey: .vat)
        try container.encode(self.documents, forKey: .documents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case vatRatePercent
        case net
        case vat
        case documents
    }
}