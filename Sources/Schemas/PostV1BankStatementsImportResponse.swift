import Foundation

public struct PostV1BankStatementsImportResponse: Codable, Hashable, Sendable {
    public let imported: Int64
    public let skipped: Int64
    public let posted: Int64
    public let customersCreated: Int64
    public let invoicesCreated: Int64
    public let invoicesLinked: Int64
    public let creditNotesCreated: Int64
    public let authorizationsRecorded: Int64
    public let payoutsPosted: Int64
    public let commissionsPosted: Int64
    public let paymentsMatched: Int64
    public let warnings: [String]
    public let statements: [PostV1BankStatementsImportResponseStatementsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        imported: Int64,
        skipped: Int64,
        posted: Int64,
        customersCreated: Int64,
        invoicesCreated: Int64,
        invoicesLinked: Int64,
        creditNotesCreated: Int64,
        authorizationsRecorded: Int64,
        payoutsPosted: Int64,
        commissionsPosted: Int64,
        paymentsMatched: Int64,
        warnings: [String],
        statements: [PostV1BankStatementsImportResponseStatementsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.imported = imported
        self.skipped = skipped
        self.posted = posted
        self.customersCreated = customersCreated
        self.invoicesCreated = invoicesCreated
        self.invoicesLinked = invoicesLinked
        self.creditNotesCreated = creditNotesCreated
        self.authorizationsRecorded = authorizationsRecorded
        self.payoutsPosted = payoutsPosted
        self.commissionsPosted = commissionsPosted
        self.paymentsMatched = paymentsMatched
        self.warnings = warnings
        self.statements = statements
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.imported = try container.decode(Int64.self, forKey: .imported)
        self.skipped = try container.decode(Int64.self, forKey: .skipped)
        self.posted = try container.decode(Int64.self, forKey: .posted)
        self.customersCreated = try container.decode(Int64.self, forKey: .customersCreated)
        self.invoicesCreated = try container.decode(Int64.self, forKey: .invoicesCreated)
        self.invoicesLinked = try container.decode(Int64.self, forKey: .invoicesLinked)
        self.creditNotesCreated = try container.decode(Int64.self, forKey: .creditNotesCreated)
        self.authorizationsRecorded = try container.decode(Int64.self, forKey: .authorizationsRecorded)
        self.payoutsPosted = try container.decode(Int64.self, forKey: .payoutsPosted)
        self.commissionsPosted = try container.decode(Int64.self, forKey: .commissionsPosted)
        self.paymentsMatched = try container.decode(Int64.self, forKey: .paymentsMatched)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.statements = try container.decode([PostV1BankStatementsImportResponseStatementsItem].self, forKey: .statements)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.imported, forKey: .imported)
        try container.encode(self.skipped, forKey: .skipped)
        try container.encode(self.posted, forKey: .posted)
        try container.encode(self.customersCreated, forKey: .customersCreated)
        try container.encode(self.invoicesCreated, forKey: .invoicesCreated)
        try container.encode(self.invoicesLinked, forKey: .invoicesLinked)
        try container.encode(self.creditNotesCreated, forKey: .creditNotesCreated)
        try container.encode(self.authorizationsRecorded, forKey: .authorizationsRecorded)
        try container.encode(self.payoutsPosted, forKey: .payoutsPosted)
        try container.encode(self.commissionsPosted, forKey: .commissionsPosted)
        try container.encode(self.paymentsMatched, forKey: .paymentsMatched)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.statements, forKey: .statements)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case imported
        case skipped
        case posted
        case customersCreated
        case invoicesCreated
        case invoicesLinked
        case creditNotesCreated
        case authorizationsRecorded
        case payoutsPosted
        case commissionsPosted
        case paymentsMatched
        case warnings
        case statements
    }
}