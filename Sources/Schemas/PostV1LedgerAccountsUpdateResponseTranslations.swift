import Foundation

public struct PostV1LedgerAccountsUpdateResponseTranslations: Codable, Hashable, Sendable {
    public let lt: PostV1LedgerAccountsUpdateResponseTranslationsLt?
    public let en: PostV1LedgerAccountsUpdateResponseTranslationsEn?
    public let ru: PostV1LedgerAccountsUpdateResponseTranslationsRu?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lt: PostV1LedgerAccountsUpdateResponseTranslationsLt? = nil,
        en: PostV1LedgerAccountsUpdateResponseTranslationsEn? = nil,
        ru: PostV1LedgerAccountsUpdateResponseTranslationsRu? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lt = lt
        self.en = en
        self.ru = ru
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lt = try container.decodeIfPresent(PostV1LedgerAccountsUpdateResponseTranslationsLt.self, forKey: .lt)
        self.en = try container.decodeIfPresent(PostV1LedgerAccountsUpdateResponseTranslationsEn.self, forKey: .en)
        self.ru = try container.decodeIfPresent(PostV1LedgerAccountsUpdateResponseTranslationsRu.self, forKey: .ru)
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