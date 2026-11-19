import Foundation

public struct GbVatObligationsListDeclarationsResponse: Codable, Hashable, Sendable {
    public let obligations: [GbVatObligationsListDeclarationsResponseObligationsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        obligations: [GbVatObligationsListDeclarationsResponseObligationsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.obligations = obligations
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.obligations = try container.decode([GbVatObligationsListDeclarationsResponseObligationsItem].self, forKey: .obligations)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.obligations, forKey: .obligations)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case obligations
    }
}