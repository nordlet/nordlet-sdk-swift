import Foundation

public struct InvoicesProposeLinesPurchasesResponseLinesItem: Codable, Hashable, Sendable {
    public let accountCode: Nullable<String>
    public let accountReason: Nullable<String>
    public let vatClassifierCode: Nullable<String>
    public let vatReason: Nullable<String>
    public let vatCandidates: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountCode: Nullable<String>,
        accountReason: Nullable<String>,
        vatClassifierCode: Nullable<String>,
        vatReason: Nullable<String>,
        vatCandidates: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountCode = accountCode
        self.accountReason = accountReason
        self.vatClassifierCode = vatClassifierCode
        self.vatReason = vatReason
        self.vatCandidates = vatCandidates
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountCode = try container.decode(Nullable<String>.self, forKey: .accountCode)
        self.accountReason = try container.decode(Nullable<String>.self, forKey: .accountReason)
        self.vatClassifierCode = try container.decode(Nullable<String>.self, forKey: .vatClassifierCode)
        self.vatReason = try container.decode(Nullable<String>.self, forKey: .vatReason)
        self.vatCandidates = try container.decode([String].self, forKey: .vatCandidates)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.accountReason, forKey: .accountReason)
        try container.encode(self.vatClassifierCode, forKey: .vatClassifierCode)
        try container.encode(self.vatReason, forKey: .vatReason)
        try container.encode(self.vatCandidates, forKey: .vatCandidates)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountCode
        case accountReason
        case vatClassifierCode
        case vatReason
        case vatCandidates
    }
}