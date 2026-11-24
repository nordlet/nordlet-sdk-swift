import Foundation

public struct EeTsdAnnexesGetDeclarationsResponseInput: Codable, Hashable, Sendable {
    public let annex4: EeTsdAnnexesGetDeclarationsResponseInputAnnex4?
    public let annex5: EeTsdAnnexesGetDeclarationsResponseInputAnnex5?
    public let annex6: EeTsdAnnexesGetDeclarationsResponseInputAnnex6?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        annex4: EeTsdAnnexesGetDeclarationsResponseInputAnnex4? = nil,
        annex5: EeTsdAnnexesGetDeclarationsResponseInputAnnex5? = nil,
        annex6: EeTsdAnnexesGetDeclarationsResponseInputAnnex6? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.annex4 = annex4
        self.annex5 = annex5
        self.annex6 = annex6
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.annex4 = try container.decodeIfPresent(EeTsdAnnexesGetDeclarationsResponseInputAnnex4.self, forKey: .annex4)
        self.annex5 = try container.decodeIfPresent(EeTsdAnnexesGetDeclarationsResponseInputAnnex5.self, forKey: .annex5)
        self.annex6 = try container.decodeIfPresent(EeTsdAnnexesGetDeclarationsResponseInputAnnex6.self, forKey: .annex6)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.annex4, forKey: .annex4)
        try container.encodeIfPresent(self.annex5, forKey: .annex5)
        try container.encodeIfPresent(self.annex6, forKey: .annex6)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case annex4
        case annex5
        case annex6
    }
}