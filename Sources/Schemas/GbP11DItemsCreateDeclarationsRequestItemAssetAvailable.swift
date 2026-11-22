import Foundation

public struct GbP11DItemsCreateDeclarationsRequestItemAssetAvailable: Codable, Hashable, Sendable {
    public let asset: GbP11DItemsCreateDeclarationsRequestItemAssetAvailableAsset
    public let otherDescription: String?
    public let annualValue: String
    public let madeGood: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        asset: GbP11DItemsCreateDeclarationsRequestItemAssetAvailableAsset,
        otherDescription: String? = nil,
        annualValue: String,
        madeGood: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.asset = asset
        self.otherDescription = otherDescription
        self.annualValue = annualValue
        self.madeGood = madeGood
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.asset = try container.decode(GbP11DItemsCreateDeclarationsRequestItemAssetAvailableAsset.self, forKey: .asset)
        self.otherDescription = try container.decodeIfPresent(String.self, forKey: .otherDescription)
        self.annualValue = try container.decode(String.self, forKey: .annualValue)
        self.madeGood = try container.decode(String.self, forKey: .madeGood)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.asset, forKey: .asset)
        try container.encodeIfPresent(self.otherDescription, forKey: .otherDescription)
        try container.encode(self.annualValue, forKey: .annualValue)
        try container.encode(self.madeGood, forKey: .madeGood)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case asset
        case otherDescription
        case annualValue
        case madeGood
    }
}