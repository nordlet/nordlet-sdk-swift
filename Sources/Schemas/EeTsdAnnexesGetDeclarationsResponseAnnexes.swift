import Foundation

public struct EeTsdAnnexesGetDeclarationsResponseAnnexes: Codable, Hashable, Sendable {
    public let annex4: Nullable<[EeTsdAnnexesGetDeclarationsResponseAnnexesAnnex4Item]>
    public let annex5: Nullable<[EeTsdAnnexesGetDeclarationsResponseAnnexesAnnex5Item]>
    public let annex6: Nullable<EeTsdAnnexesGetDeclarationsResponseAnnexesAnnex6>
    /// Added to code 114; negative when annex 5 or 6 gives back more than the annexes add
    public let incomeTax: String
    /// Code 4180, added to code 115
    public let socialTax: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        annex4: Nullable<[EeTsdAnnexesGetDeclarationsResponseAnnexesAnnex4Item]>,
        annex5: Nullable<[EeTsdAnnexesGetDeclarationsResponseAnnexesAnnex5Item]>,
        annex6: Nullable<EeTsdAnnexesGetDeclarationsResponseAnnexesAnnex6>,
        incomeTax: String,
        socialTax: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.annex4 = annex4
        self.annex5 = annex5
        self.annex6 = annex6
        self.incomeTax = incomeTax
        self.socialTax = socialTax
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.annex4 = try container.decode(Nullable<[EeTsdAnnexesGetDeclarationsResponseAnnexesAnnex4Item]>.self, forKey: .annex4)
        self.annex5 = try container.decode(Nullable<[EeTsdAnnexesGetDeclarationsResponseAnnexesAnnex5Item]>.self, forKey: .annex5)
        self.annex6 = try container.decode(Nullable<EeTsdAnnexesGetDeclarationsResponseAnnexesAnnex6>.self, forKey: .annex6)
        self.incomeTax = try container.decode(String.self, forKey: .incomeTax)
        self.socialTax = try container.decode(String.self, forKey: .socialTax)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.annex4, forKey: .annex4)
        try container.encode(self.annex5, forKey: .annex5)
        try container.encode(self.annex6, forKey: .annex6)
        try container.encode(self.incomeTax, forKey: .incomeTax)
        try container.encode(self.socialTax, forKey: .socialTax)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case annex4
        case annex5
        case annex6
        case incomeTax
        case socialTax
    }
}