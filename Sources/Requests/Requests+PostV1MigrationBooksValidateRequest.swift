import Foundation

extension Requests {
    public struct PostV1MigrationBooksValidateRequest: Codable, Hashable, Sendable {
        public let cutoverDate: String
        public let source: String?
        public let accounts: [PostV1MigrationBooksValidateRequestAccountsItem]?
        public let partners: [PostV1MigrationBooksValidateRequestPartnersItem]?
        public let items: [PostV1MigrationBooksValidateRequestItemsItem]?
        public let openingBalances: PostV1MigrationBooksValidateRequestOpeningBalances?
        public let journal: [PostV1MigrationBooksValidateRequestJournalItem]?
        public let openReceivables: [PostV1MigrationBooksValidateRequestOpenReceivablesItem]?
        public let openPayables: [PostV1MigrationBooksValidateRequestOpenPayablesItem]?
        public let assetGroups: [PostV1MigrationBooksValidateRequestAssetGroupsItem]?
        public let fixedAssets: [PostV1MigrationBooksValidateRequestFixedAssetsItem]?
        public let stock: [PostV1MigrationBooksValidateRequestStockItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cutoverDate: String,
            source: String? = nil,
            accounts: [PostV1MigrationBooksValidateRequestAccountsItem]? = nil,
            partners: [PostV1MigrationBooksValidateRequestPartnersItem]? = nil,
            items: [PostV1MigrationBooksValidateRequestItemsItem]? = nil,
            openingBalances: PostV1MigrationBooksValidateRequestOpeningBalances? = nil,
            journal: [PostV1MigrationBooksValidateRequestJournalItem]? = nil,
            openReceivables: [PostV1MigrationBooksValidateRequestOpenReceivablesItem]? = nil,
            openPayables: [PostV1MigrationBooksValidateRequestOpenPayablesItem]? = nil,
            assetGroups: [PostV1MigrationBooksValidateRequestAssetGroupsItem]? = nil,
            fixedAssets: [PostV1MigrationBooksValidateRequestFixedAssetsItem]? = nil,
            stock: [PostV1MigrationBooksValidateRequestStockItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cutoverDate = cutoverDate
            self.source = source
            self.accounts = accounts
            self.partners = partners
            self.items = items
            self.openingBalances = openingBalances
            self.journal = journal
            self.openReceivables = openReceivables
            self.openPayables = openPayables
            self.assetGroups = assetGroups
            self.fixedAssets = fixedAssets
            self.stock = stock
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cutoverDate = try container.decode(String.self, forKey: .cutoverDate)
            self.source = try container.decodeIfPresent(String.self, forKey: .source)
            self.accounts = try container.decodeIfPresent([PostV1MigrationBooksValidateRequestAccountsItem].self, forKey: .accounts)
            self.partners = try container.decodeIfPresent([PostV1MigrationBooksValidateRequestPartnersItem].self, forKey: .partners)
            self.items = try container.decodeIfPresent([PostV1MigrationBooksValidateRequestItemsItem].self, forKey: .items)
            self.openingBalances = try container.decodeIfPresent(PostV1MigrationBooksValidateRequestOpeningBalances.self, forKey: .openingBalances)
            self.journal = try container.decodeIfPresent([PostV1MigrationBooksValidateRequestJournalItem].self, forKey: .journal)
            self.openReceivables = try container.decodeIfPresent([PostV1MigrationBooksValidateRequestOpenReceivablesItem].self, forKey: .openReceivables)
            self.openPayables = try container.decodeIfPresent([PostV1MigrationBooksValidateRequestOpenPayablesItem].self, forKey: .openPayables)
            self.assetGroups = try container.decodeIfPresent([PostV1MigrationBooksValidateRequestAssetGroupsItem].self, forKey: .assetGroups)
            self.fixedAssets = try container.decodeIfPresent([PostV1MigrationBooksValidateRequestFixedAssetsItem].self, forKey: .fixedAssets)
            self.stock = try container.decodeIfPresent([PostV1MigrationBooksValidateRequestStockItem].self, forKey: .stock)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.cutoverDate, forKey: .cutoverDate)
            try container.encodeIfPresent(self.source, forKey: .source)
            try container.encodeIfPresent(self.accounts, forKey: .accounts)
            try container.encodeIfPresent(self.partners, forKey: .partners)
            try container.encodeIfPresent(self.items, forKey: .items)
            try container.encodeIfPresent(self.openingBalances, forKey: .openingBalances)
            try container.encodeIfPresent(self.journal, forKey: .journal)
            try container.encodeIfPresent(self.openReceivables, forKey: .openReceivables)
            try container.encodeIfPresent(self.openPayables, forKey: .openPayables)
            try container.encodeIfPresent(self.assetGroups, forKey: .assetGroups)
            try container.encodeIfPresent(self.fixedAssets, forKey: .fixedAssets)
            try container.encodeIfPresent(self.stock, forKey: .stock)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cutoverDate
            case source
            case accounts
            case partners
            case items
            case openingBalances
            case journal
            case openReceivables
            case openPayables
            case assetGroups
            case fixedAssets
            case stock
        }
    }
}