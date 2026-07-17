import Foundation

public struct PostV1PartnersFindOrCreateResponse: Codable, Hashable, Sendable {
    public let created: Bool
    public let partner: PostV1PartnersFindOrCreateResponsePartner
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        created: Bool,
        partner: PostV1PartnersFindOrCreateResponsePartner,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.created = created
        self.partner = partner
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.created = try container.decode(Bool.self, forKey: .created)
        self.partner = try container.decode(PostV1PartnersFindOrCreateResponsePartner.self, forKey: .partner)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.created, forKey: .created)
        try container.encode(self.partner, forKey: .partner)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case created
        case partner
    }
}