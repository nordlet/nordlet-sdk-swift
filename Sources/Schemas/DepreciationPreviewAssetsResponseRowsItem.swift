import Foundation

public struct DepreciationPreviewAssetsResponseRowsItem: Codable, Hashable, Sendable {
    public let assetId: String
    public let code: String
    public let name: String
    public let amount: String
    public let alreadyPosted: Bool
    /// Every month this run posts for the asset, earlier unposted months included
    public let months: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        assetId: String,
        code: String,
        name: String,
        amount: String,
        alreadyPosted: Bool,
        months: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.assetId = assetId
        self.code = code
        self.name = name
        self.amount = amount
        self.alreadyPosted = alreadyPosted
        self.months = months
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.assetId = try container.decode(String.self, forKey: .assetId)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.alreadyPosted = try container.decode(Bool.self, forKey: .alreadyPosted)
        self.months = try container.decode([String].self, forKey: .months)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.assetId, forKey: .assetId)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.alreadyPosted, forKey: .alreadyPosted)
        try container.encode(self.months, forKey: .months)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case assetId
        case code
        case name
        case amount
        case alreadyPosted
        case months
    }
}