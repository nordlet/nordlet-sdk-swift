import Foundation

public struct PostV1LedgerStatementRowsSetResponse: Codable, Hashable, Sendable {
    public let scheme: String
    public let accountCode: String
    public let rowCode: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        scheme: String,
        accountCode: String,
        rowCode: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.scheme = scheme
        self.accountCode = accountCode
        self.rowCode = rowCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.scheme = try container.decode(String.self, forKey: .scheme)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.rowCode = try container.decode(Nullable<String>.self, forKey: .rowCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.scheme, forKey: .scheme)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.rowCode, forKey: .rowCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case scheme
        case accountCode
        case rowCode
    }
}