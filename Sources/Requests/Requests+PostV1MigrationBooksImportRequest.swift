import Foundation

extension Requests {
    public struct PostV1MigrationBooksImportRequest: Codable, Hashable, Sendable {
        public let cutoverDate: String
        public let source: String?
        public let accounts: [PostV1MigrationBooksImportRequestAccountsItem]?
        public let partners: [PostV1MigrationBooksImportRequestPartnersItem]?
        public let items: [PostV1MigrationBooksImportRequestItemsItem]?
        public let openingBalances: PostV1MigrationBooksImportRequestOpeningBalances?
        public let journal: [PostV1MigrationBooksImportRequestJournalItem]?
        public let openReceivables: [PostV1MigrationBooksImportRequestOpenReceivablesItem]?
        public let openPayables: [PostV1MigrationBooksImportRequestOpenPayablesItem]?
        public let assetGroups: [PostV1MigrationBooksImportRequestAssetGroupsItem]?
        public let fixedAssets: [PostV1MigrationBooksImportRequestFixedAssetsItem]?
        public let stock: [PostV1MigrationBooksImportRequestStockItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cutoverDate: String,
            source: String? = nil,
            accounts: [PostV1MigrationBooksImportRequestAccountsItem]? = nil,
            partners: [PostV1MigrationBooksImportRequestPartnersItem]? = nil,
            items: [PostV1MigrationBooksImportRequestItemsItem]? = nil,
            openingBalances: PostV1MigrationBooksImportRequestOpeningBalances? = nil,
            journal: [PostV1MigrationBooksImportRequestJournalItem]? = nil,
            openReceivables: [PostV1MigrationBooksImportRequestOpenReceivablesItem]? = nil,
            openPayables: [PostV1MigrationBooksImportRequestOpenPayablesItem]? = nil,
            assetGroups: [PostV1MigrationBooksImportRequestAssetGroupsItem]? = nil,
            fixedAssets: [PostV1MigrationBooksImportRequestFixedAssetsItem]? = nil,
            stock: [PostV1MigrationBooksImportRequestStockItem]? = nil,
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
            self.accounts = try container.decodeIfPresent([PostV1MigrationBooksImportRequestAccountsItem].self, forKey: .accounts)
            self.partners = try container.decodeIfPresent([PostV1MigrationBooksImportRequestPartnersItem].self, forKey: .partners)
            self.items = try container.decodeIfPresent([PostV1MigrationBooksImportRequestItemsItem].self, forKey: .items)
            self.openingBalances = try container.decodeIfPresent(PostV1MigrationBooksImportRequestOpeningBalances.self, forKey: .openingBalances)
            self.journal = try container.decodeIfPresent([PostV1MigrationBooksImportRequestJournalItem].self, forKey: .journal)
            self.openReceivables = try container.decodeIfPresent([PostV1MigrationBooksImportRequestOpenReceivablesItem].self, forKey: .openReceivables)
            self.openPayables = try container.decodeIfPresent([PostV1MigrationBooksImportRequestOpenPayablesItem].self, forKey: .openPayables)
            self.assetGroups = try container.decodeIfPresent([PostV1MigrationBooksImportRequestAssetGroupsItem].self, forKey: .assetGroups)
            self.fixedAssets = try container.decodeIfPresent([PostV1MigrationBooksImportRequestFixedAssetsItem].self, forKey: .fixedAssets)
            self.stock = try container.decodeIfPresent([PostV1MigrationBooksImportRequestStockItem].self, forKey: .stock)
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