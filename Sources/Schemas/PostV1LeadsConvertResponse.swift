import Foundation

public struct PostV1LeadsConvertResponse: Codable, Hashable, Sendable {
    public let lead: PostV1LeadsConvertResponseLead
    public let partnerId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lead: PostV1LeadsConvertResponseLead,
        partnerId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lead = lead
        self.partnerId = partnerId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lead = try container.decode(PostV1LeadsConvertResponseLead.self, forKey: .lead)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.lead, forKey: .lead)
        try container.encode(self.partnerId, forKey: .partnerId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lead
        case partnerId
    }
}