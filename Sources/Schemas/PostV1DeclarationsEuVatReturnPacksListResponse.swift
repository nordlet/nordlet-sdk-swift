import Foundation

public struct PostV1DeclarationsEuVatReturnPacksListResponse: Codable, Hashable, Sendable {
    public let packs: [PostV1DeclarationsEuVatReturnPacksListResponsePacksItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        packs: [PostV1DeclarationsEuVatReturnPacksListResponsePacksItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.packs = packs
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.packs = try container.decode([PostV1DeclarationsEuVatReturnPacksListResponsePacksItem].self, forKey: .packs)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.packs, forKey: .packs)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case packs
    }
}