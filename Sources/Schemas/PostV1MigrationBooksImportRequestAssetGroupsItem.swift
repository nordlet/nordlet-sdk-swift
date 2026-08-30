import Foundation

public struct PostV1MigrationBooksImportRequestAssetGroupsItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: String
    public let assetAccountCode: String
    public let depreciationAccountCode: String
    public let expenseAccountCode: String?
    public let defaultUsefulLifeMonths: Int64?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: String,
        assetAccountCode: String,
        depreciationAccountCode: String,
        expenseAccountCode: String? = nil,
        defaultUsefulLifeMonths: Int64? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.assetAccountCode = assetAccountCode
        self.depreciationAccountCode = depreciationAccountCode
        self.expenseAccountCode = expenseAccountCode
        self.defaultUsefulLifeMonths = defaultUsefulLifeMonths
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.assetAccountCode = try container.decode(String.self, forKey: .assetAccountCode)
        self.depreciationAccountCode = try container.decode(String.self, forKey: .depreciationAccountCode)
        self.expenseAccountCode = try container.decodeIfPresent(String.self, forKey: .expenseAccountCode)
        self.defaultUsefulLifeMonths = try container.decodeIfPresent(Int64.self, forKey: .defaultUsefulLifeMonths)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.assetAccountCode, forKey: .assetAccountCode)
        try container.encode(self.depreciationAccountCode, forKey: .depreciationAccountCode)
        try container.encodeIfPresent(self.expenseAccountCode, forKey: .expenseAccountCode)
        try container.encodeIfPresent(self.defaultUsefulLifeMonths, forKey: .defaultUsefulLifeMonths)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case assetAccountCode
        case depreciationAccountCode
        case expenseAccountCode
        case defaultUsefulLifeMonths
    }
}