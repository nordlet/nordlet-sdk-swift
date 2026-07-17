import Foundation

public struct PostV1AssetsGroupsListResponseRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: String
    public let defaultUsefulLifeMonths: Nullable<Int64>
    public let assetAccountCode: String
    public let depreciationAccountCode: String
    public let expenseAccountCode: String
    public let id: String
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: String,
        defaultUsefulLifeMonths: Nullable<Int64>,
        assetAccountCode: String,
        depreciationAccountCode: String,
        expenseAccountCode: String,
        id: String,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.defaultUsefulLifeMonths = defaultUsefulLifeMonths
        self.assetAccountCode = assetAccountCode
        self.depreciationAccountCode = depreciationAccountCode
        self.expenseAccountCode = expenseAccountCode
        self.id = id
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.defaultUsefulLifeMonths = try container.decode(Nullable<Int64>.self, forKey: .defaultUsefulLifeMonths)
        self.assetAccountCode = try container.decode(String.self, forKey: .assetAccountCode)
        self.depreciationAccountCode = try container.decode(String.self, forKey: .depreciationAccountCode)
        self.expenseAccountCode = try container.decode(String.self, forKey: .expenseAccountCode)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.defaultUsefulLifeMonths, forKey: .defaultUsefulLifeMonths)
        try container.encode(self.assetAccountCode, forKey: .assetAccountCode)
        try container.encode(self.depreciationAccountCode, forKey: .depreciationAccountCode)
        try container.encode(self.expenseAccountCode, forKey: .expenseAccountCode)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case defaultUsefulLifeMonths
        case assetAccountCode
        case depreciationAccountCode
        case expenseAccountCode
        case id
        case createdAt
    }
}