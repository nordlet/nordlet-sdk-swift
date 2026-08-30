import Foundation

public struct PostV1MigrationBooksImportResponse: Codable, Hashable, Sendable {
    public let dryRun: Bool
    public let cutoverDate: String
    public let accounts: PostV1MigrationBooksImportResponseAccounts
    public let partners: PostV1MigrationBooksImportResponsePartners
    public let items: PostV1MigrationBooksImportResponseItems
    public let assetGroups: PostV1MigrationBooksImportResponseAssetGroups
    public let openingBalances: Nullable<PostV1MigrationBooksImportResponseOpeningBalances>
    public let journal: PostV1MigrationBooksImportResponseJournal
    public let openReceivables: PostV1MigrationBooksImportResponseOpenReceivables
    public let openPayables: PostV1MigrationBooksImportResponseOpenPayables
    public let fixedAssets: PostV1MigrationBooksImportResponseFixedAssets
    public let stock: PostV1MigrationBooksImportResponseStock
    public let numberSeries: [PostV1MigrationBooksImportResponseNumberSeriesItem]
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dryRun: Bool,
        cutoverDate: String,
        accounts: PostV1MigrationBooksImportResponseAccounts,
        partners: PostV1MigrationBooksImportResponsePartners,
        items: PostV1MigrationBooksImportResponseItems,
        assetGroups: PostV1MigrationBooksImportResponseAssetGroups,
        openingBalances: Nullable<PostV1MigrationBooksImportResponseOpeningBalances>,
        journal: PostV1MigrationBooksImportResponseJournal,
        openReceivables: PostV1MigrationBooksImportResponseOpenReceivables,
        openPayables: PostV1MigrationBooksImportResponseOpenPayables,
        fixedAssets: PostV1MigrationBooksImportResponseFixedAssets,
        stock: PostV1MigrationBooksImportResponseStock,
        numberSeries: [PostV1MigrationBooksImportResponseNumberSeriesItem],
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
        self.cutoverDate = try container.decode(String.self, forKey: .cutoverDate)
        self.accounts = try container.decode(PostV1MigrationBooksImportResponseAccounts.self, forKey: .accounts)
        self.partners = try container.decode(PostV1MigrationBooksImportResponsePartners.self, forKey: .partners)
        self.items = try container.decode(PostV1MigrationBooksImportResponseItems.self, forKey: .items)
        self.assetGroups = try container.decode(PostV1MigrationBooksImportResponseAssetGroups.self, forKey: .assetGroups)
        self.openingBalances = try container.decode(Nullable<PostV1MigrationBooksImportResponseOpeningBalances>.self, forKey: .openingBalances)
        self.journal = try container.decode(PostV1MigrationBooksImportResponseJournal.self, forKey: .journal)
        self.openReceivables = try container.decode(PostV1MigrationBooksImportResponseOpenReceivables.self, forKey: .openReceivables)
        self.openPayables = try container.decode(PostV1MigrationBooksImportResponseOpenPayables.self, forKey: .openPayables)
        self.fixedAssets = try container.decode(PostV1MigrationBooksImportResponseFixedAssets.self, forKey: .fixedAssets)
        self.stock = try container.decode(PostV1MigrationBooksImportResponseStock.self, forKey: .stock)
        self.numberSeries = try container.decode([PostV1MigrationBooksImportResponseNumberSeriesItem].self, forKey: .numberSeries)
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