import Foundation

public struct AssetsUpdateAssetsResponseInputVatUseChangesItem: Codable, Hashable, Sendable {
    public let year: Int64
    public let percent: String
    public let reason: AssetsUpdateAssetsResponseInputVatUseChangesItemReason
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        percent: String,
        reason: AssetsUpdateAssetsResponseInputVatUseChangesItemReason,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.percent = percent
        self.reason = reason
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.percent = try container.decode(String.self, forKey: .percent)
        self.reason = try container.decode(AssetsUpdateAssetsResponseInputVatUseChangesItemReason.self, forKey: .reason)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.percent, forKey: .percent)
        try container.encode(self.reason, forKey: .reason)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case percent
        case reason
    }
}