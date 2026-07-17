import Foundation

public struct PostV1ReportsFinancialStatementsResponseCashFlow: Codable, Hashable, Sendable {
    public let openingCash: String
    public let operating: String
    public let investing: String
    public let financing: String
    public let netChange: String
    public let closingCash: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        openingCash: String,
        operating: String,
        investing: String,
        financing: String,
        netChange: String,
        closingCash: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.openingCash = openingCash
        self.operating = operating
        self.investing = investing
        self.financing = financing
        self.netChange = netChange
        self.closingCash = closingCash
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.openingCash = try container.decode(String.self, forKey: .openingCash)
        self.operating = try container.decode(String.self, forKey: .operating)
        self.investing = try container.decode(String.self, forKey: .investing)
        self.financing = try container.decode(String.self, forKey: .financing)
        self.netChange = try container.decode(String.self, forKey: .netChange)
        self.closingCash = try container.decode(String.self, forKey: .closingCash)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.openingCash, forKey: .openingCash)
        try container.encode(self.operating, forKey: .operating)
        try container.encode(self.investing, forKey: .investing)
        try container.encode(self.financing, forKey: .financing)
        try container.encode(self.netChange, forKey: .netChange)
        try container.encode(self.closingCash, forKey: .closingCash)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case openingCash
        case operating
        case investing
        case financing
        case netChange
        case closingCash
    }
}