import Foundation

extension Requests {
    public struct BooksValidateMigrationRequest: Codable, Hashable, Sendable {
        public let cutoverDate: CalendarDate
        public let source: String?
        public let accounts: [BooksValidateMigrationRequestAccountsItem]?
        public let partners: [BooksValidateMigrationRequestPartnersItem]?
        public let items: [BooksValidateMigrationRequestItemsItem]?
        public let openingBalances: BooksValidateMigrationRequestOpeningBalances?
        public let journal: [BooksValidateMigrationRequestJournalItem]?
        public let openReceivables: [BooksValidateMigrationRequestOpenReceivablesItem]?
        public let openPayables: [BooksValidateMigrationRequestOpenPayablesItem]?
        public let assetGroups: [BooksValidateMigrationRequestAssetGroupsItem]?
        public let fixedAssets: [BooksValidateMigrationRequestFixedAssetsItem]?
        public let stock: [BooksValidateMigrationRequestStockItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cutoverDate: CalendarDate,
            source: String? = nil,
            accounts: [BooksValidateMigrationRequestAccountsItem]? = nil,
            partners: [BooksValidateMigrationRequestPartnersItem]? = nil,
            items: [BooksValidateMigrationRequestItemsItem]? = nil,
            openingBalances: BooksValidateMigrationRequestOpeningBalances? = nil,
            journal: [BooksValidateMigrationRequestJournalItem]? = nil,
            openReceivables: [BooksValidateMigrationRequestOpenReceivablesItem]? = nil,
            openPayables: [BooksValidateMigrationRequestOpenPayablesItem]? = nil,
            assetGroups: [BooksValidateMigrationRequestAssetGroupsItem]? = nil,
            fixedAssets: [BooksValidateMigrationRequestFixedAssetsItem]? = nil,
            stock: [BooksValidateMigrationRequestStockItem]? = nil,
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
            self.accounts = try container.decodeIfPresent([BooksValidateMigrationRequestAccountsItem].self, forKey: .accounts)
            self.partners = try container.decodeIfPresent([BooksValidateMigrationRequestPartnersItem].self, forKey: .partners)
            self.items = try container.decodeIfPresent([BooksValidateMigrationRequestItemsItem].self, forKey: .items)
            self.openingBalances = try container.decodeIfPresent(BooksValidateMigrationRequestOpeningBalances.self, forKey: .openingBalances)
            self.journal = try container.decodeIfPresent([BooksValidateMigrationRequestJournalItem].self, forKey: .journal)
            self.openReceivables = try container.decodeIfPresent([BooksValidateMigrationRequestOpenReceivablesItem].self, forKey: .openReceivables)
            self.openPayables = try container.decodeIfPresent([BooksValidateMigrationRequestOpenPayablesItem].self, forKey: .openPayables)
            self.assetGroups = try container.decodeIfPresent([BooksValidateMigrationRequestAssetGroupsItem].self, forKey: .assetGroups)
            self.fixedAssets = try container.decodeIfPresent([BooksValidateMigrationRequestFixedAssetsItem].self, forKey: .fixedAssets)
            self.stock = try container.decodeIfPresent([BooksValidateMigrationRequestStockItem].self, forKey: .stock)
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