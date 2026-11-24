import Foundation

public struct IeRtdGenerateDeclarationsResponseRowsItem: Codable, Hashable, Sendable {
    public let rate: String
    public let label: String
    public let supplies: String
    public let acquisitions: String
    public let purchasesResale: String
    public let purchasesNonResale: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rate: String,
        label: String,
        supplies: String,
        acquisitions: String,
        purchasesResale: String,
        purchasesNonResale: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rate = rate
        self.label = label
        self.supplies = supplies
        self.acquisitions = acquisitions
        self.purchasesResale = purchasesResale
        self.purchasesNonResale = purchasesNonResale
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rate = try container.decode(String.self, forKey: .rate)
        self.label = try container.decode(String.self, forKey: .label)
        self.supplies = try container.decode(String.self, forKey: .supplies)
        self.acquisitions = try container.decode(String.self, forKey: .acquisitions)
        self.purchasesResale = try container.decode(String.self, forKey: .purchasesResale)
        self.purchasesNonResale = try container.decode(String.self, forKey: .purchasesNonResale)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rate, forKey: .rate)
        try container.encode(self.label, forKey: .label)
        try container.encode(self.supplies, forKey: .supplies)
        try container.encode(self.acquisitions, forKey: .acquisitions)
        try container.encode(self.purchasesResale, forKey: .purchasesResale)
        try container.encode(self.purchasesNonResale, forKey: .purchasesNonResale)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rate
        case label
        case supplies
        case acquisitions
        case purchasesResale
        case purchasesNonResale
    }
}