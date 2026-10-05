import Foundation

extension Requests {
    public struct BooksImportMigrationRequest: Codable, Hashable, Sendable {
        public let cutoverDate: CalendarDate
        public let source: String?
        public let accounts: [BooksImportMigrationRequestAccountsItem]?
        public let partners: [BooksImportMigrationRequestPartnersItem]?
        public let items: [BooksImportMigrationRequestItemsItem]?
        public let openingBalances: BooksImportMigrationRequestOpeningBalances?
        public let journal: [BooksImportMigrationRequestJournalItem]?
        public let openReceivables: [BooksImportMigrationRequestOpenReceivablesItem]?
        public let openPayables: [BooksImportMigrationRequestOpenPayablesItem]?
        public let assetGroups: [BooksImportMigrationRequestAssetGroupsItem]?
        public let fixedAssets: [BooksImportMigrationRequestFixedAssetsItem]?
        public let stock: [BooksImportMigrationRequestStockItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cutoverDate: CalendarDate,
            source: String? = nil,
            accounts: [BooksImportMigrationRequestAccountsItem]? = nil,
            partners: [BooksImportMigrationRequestPartnersItem]? = nil,
            items: [BooksImportMigrationRequestItemsItem]? = nil,
            openingBalances: BooksImportMigrationRequestOpeningBalances? = nil,
            journal: [BooksImportMigrationRequestJournalItem]? = nil,
            openReceivables: [BooksImportMigrationRequestOpenReceivablesItem]? = nil,
            openPayables: [BooksImportMigrationRequestOpenPayablesItem]? = nil,
            assetGroups: [BooksImportMigrationRequestAssetGroupsItem]? = nil,
            fixedAssets: [BooksImportMigrationRequestFixedAssetsItem]? = nil,
            stock: [BooksImportMigrationRequestStockItem]? = nil,
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
            self.cutoverDate = try container.decode(CalendarDate.self, forKey: .cutoverDate)
            self.source = try container.decodeIfPresent(String.self, forKey: .source)
            self.accounts = try container.decodeIfPresent([BooksImportMigrationRequestAccountsItem].self, forKey: .accounts)
            self.partners = try container.decodeIfPresent([BooksImportMigrationRequestPartnersItem].self, forKey: .partners)
            self.items = try container.decodeIfPresent([BooksImportMigrationRequestItemsItem].self, forKey: .items)
            self.openingBalances = try container.decodeIfPresent(BooksImportMigrationRequestOpeningBalances.self, forKey: .openingBalances)
            self.journal = try container.decodeIfPresent([BooksImportMigrationRequestJournalItem].self, forKey: .journal)
            self.openReceivables = try container.decodeIfPresent([BooksImportMigrationRequestOpenReceivablesItem].self, forKey: .openReceivables)
            self.openPayables = try container.decodeIfPresent([BooksImportMigrationRequestOpenPayablesItem].self, forKey: .openPayables)
            self.assetGroups = try container.decodeIfPresent([BooksImportMigrationRequestAssetGroupsItem].self, forKey: .assetGroups)
            self.fixedAssets = try container.decodeIfPresent([BooksImportMigrationRequestFixedAssetsItem].self, forKey: .fixedAssets)
            self.stock = try container.decodeIfPresent([BooksImportMigrationRequestStockItem].self, forKey: .stock)
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