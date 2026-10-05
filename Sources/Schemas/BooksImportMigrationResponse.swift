import Foundation

public struct BooksImportMigrationResponse: Codable, Hashable, Sendable {
    public let dryRun: Bool
    public let cutoverDate: CalendarDate
    public let accounts: BooksImportMigrationResponseAccounts
    public let partners: BooksImportMigrationResponsePartners
    public let items: BooksImportMigrationResponseItems
    public let assetGroups: BooksImportMigrationResponseAssetGroups
    public let openingBalances: Nullable<BooksImportMigrationResponseOpeningBalances>
    public let journal: BooksImportMigrationResponseJournal
    public let openReceivables: BooksImportMigrationResponseOpenReceivables
    public let openPayables: BooksImportMigrationResponseOpenPayables
    public let fixedAssets: BooksImportMigrationResponseFixedAssets
    public let stock: BooksImportMigrationResponseStock
    public let numberSeries: [BooksImportMigrationResponseNumberSeriesItem]
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dryRun: Bool,
        cutoverDate: CalendarDate,
        accounts: BooksImportMigrationResponseAccounts,
        partners: BooksImportMigrationResponsePartners,
        items: BooksImportMigrationResponseItems,
        assetGroups: BooksImportMigrationResponseAssetGroups,
        openingBalances: Nullable<BooksImportMigrationResponseOpeningBalances>,
        journal: BooksImportMigrationResponseJournal,
        openReceivables: BooksImportMigrationResponseOpenReceivables,
        openPayables: BooksImportMigrationResponseOpenPayables,
        fixedAssets: BooksImportMigrationResponseFixedAssets,
        stock: BooksImportMigrationResponseStock,
        numberSeries: [BooksImportMigrationResponseNumberSeriesItem],
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dryRun = dryRun
        self.cutoverDate = cutoverDate
        self.accounts = accounts
        self.partners = partners
        self.items = items
        self.assetGroups = assetGroups
        self.openingBalances = openingBalances
        self.journal = journal
        self.openReceivables = openReceivables
        self.openPayables = openPayables
        self.fixedAssets = fixedAssets
        self.stock = stock
        self.numberSeries = numberSeries
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dryRun = try container.decode(Bool.self, forKey: .dryRun)
        self.cutoverDate = try container.decode(CalendarDate.self, forKey: .cutoverDate)
        self.accounts = try container.decode(BooksImportMigrationResponseAccounts.self, forKey: .accounts)
        self.partners = try container.decode(BooksImportMigrationResponsePartners.self, forKey: .partners)
        self.items = try container.decode(BooksImportMigrationResponseItems.self, forKey: .items)
        self.assetGroups = try container.decode(BooksImportMigrationResponseAssetGroups.self, forKey: .assetGroups)
        self.openingBalances = try container.decode(Nullable<BooksImportMigrationResponseOpeningBalances>.self, forKey: .openingBalances)
        self.journal = try container.decode(BooksImportMigrationResponseJournal.self, forKey: .journal)
        self.openReceivables = try container.decode(BooksImportMigrationResponseOpenReceivables.self, forKey: .openReceivables)
        self.openPayables = try container.decode(BooksImportMigrationResponseOpenPayables.self, forKey: .openPayables)
        self.fixedAssets = try container.decode(BooksImportMigrationResponseFixedAssets.self, forKey: .fixedAssets)
        self.stock = try container.decode(BooksImportMigrationResponseStock.self, forKey: .stock)
        self.numberSeries = try container.decode([BooksImportMigrationResponseNumberSeriesItem].self, forKey: .numberSeries)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.dryRun, forKey: .dryRun)
        try container.encode(self.cutoverDate, forKey: .cutoverDate)
        try container.encode(self.accounts, forKey: .accounts)
        try container.encode(self.partners, forKey: .partners)
        try container.encode(self.items, forKey: .items)
        try container.encode(self.assetGroups, forKey: .assetGroups)
        try container.encode(self.openingBalances, forKey: .openingBalances)
        try container.encode(self.journal, forKey: .journal)
        try container.encode(self.openReceivables, forKey: .openReceivables)
        try container.encode(self.openPayables, forKey: .openPayables)
        try container.encode(self.fixedAssets, forKey: .fixedAssets)
        try container.encode(self.stock, forKey: .stock)
        try container.encode(self.numberSeries, forKey: .numberSeries)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dryRun
        case cutoverDate
        case accounts
        case partners
        case items
        case assetGroups
        case openingBalances
        case journal
        case openReceivables
        case openPayables
        case fixedAssets
        case stock
        case numberSeries
        case warnings
    }
}