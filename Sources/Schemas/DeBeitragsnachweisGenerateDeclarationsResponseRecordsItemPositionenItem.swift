import Foundation

public struct DeBeitragsnachweisGenerateDeclarationsResponseRecordsItemPositionenItem: Codable, Hashable, Sendable {
    public let beitragsgruppe: String
    public let betrag: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        beitragsgruppe: String,
        betrag: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.beitragsgruppe = beitragsgruppe
        self.betrag = betrag
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.beitragsgruppe = try container.decode(String.self, forKey: .beitragsgruppe)
        self.betrag = try container.decode(String.self, forKey: .betrag)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.beitragsgruppe, forKey: .beitragsgruppe)
        try container.encode(self.betrag, forKey: .betrag)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case beitragsgruppe
        case betrag
    }
}