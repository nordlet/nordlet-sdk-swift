import Foundation

public struct PostV1LedgerAccountsCreateResponseTranslations: Codable, Hashable, Sendable {
    public let lt: PostV1LedgerAccountsCreateResponseTranslationsLt?
    public let en: PostV1LedgerAccountsCreateResponseTranslationsEn?
    public let ru: PostV1LedgerAccountsCreateResponseTranslationsRu?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lt: PostV1LedgerAccountsCreateResponseTranslationsLt? = nil,
        en: PostV1LedgerAccountsCreateResponseTranslationsEn? = nil,
        ru: PostV1LedgerAccountsCreateResponseTranslationsRu? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lt = lt
        self.en = en
        self.ru = ru
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lt = try container.decodeIfPresent(PostV1LedgerAccountsCreateResponseTranslationsLt.self, forKey: .lt)
        self.en = try container.decodeIfPresent(PostV1LedgerAccountsCreateResponseTranslationsEn.self, forKey: .en)
        self.ru = try container.decodeIfPresent(PostV1LedgerAccountsCreateResponseTranslationsRu.self, forKey: .ru)
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