import Foundation

public struct GbVatLiabilitiesListDeclarationsResponse: Codable, Hashable, Sendable {
    public let liabilities: [GbVatLiabilitiesListDeclarationsResponseLiabilitiesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        liabilities: [GbVatLiabilitiesListDeclarationsResponseLiabilitiesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.liabilities = liabilities
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.liabilities = try container.decode([GbVatLiabilitiesListDeclarationsResponseLiabilitiesItem].self, forKey: .liabilities)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.liabilities, forKey: .liabilities)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case liabilities
    }
}