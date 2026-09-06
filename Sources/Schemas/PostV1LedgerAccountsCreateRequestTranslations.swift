import Foundation

public struct PostV1LedgerAccountsCreateRequestTranslations: Codable, Hashable, Sendable {
    public let lt: PostV1LedgerAccountsCreateRequestTranslationsLt?
    public let en: PostV1LedgerAccountsCreateRequestTranslationsEn?
    public let ru: PostV1LedgerAccountsCreateRequestTranslationsRu?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lt: PostV1LedgerAccountsCreateRequestTranslationsLt? = nil,
        en: PostV1LedgerAccountsCreateRequestTranslationsEn? = nil,
        ru: PostV1LedgerAccountsCreateRequestTranslationsRu? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lt = lt
        self.en = en
        self.ru = ru
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lt = try container.decodeIfPresent(PostV1LedgerAccountsCreateRequestTranslationsLt.self, forKey: .lt)
        self.en = try container.decodeIfPresent(PostV1LedgerAccountsCreateRequestTranslationsEn.self, forKey: .en)
        self.ru = try container.decodeIfPresent(PostV1LedgerAccountsCreateRequestTranslationsRu.self, forKey: .ru)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.lt, forKey: .lt)
        try container.encodeIfPresent(self.en, forKey: .en)
        try container.encodeIfPresent(self.ru, forKey: .ru)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lt
        case en
        case ru
    }
}