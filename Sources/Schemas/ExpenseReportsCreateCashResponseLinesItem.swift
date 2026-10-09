import Foundation

public struct ExpenseReportsCreateCashResponseLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let description: String
    public let documentNumber: Nullable<String>
    public let accountCode: String
    public let netAmount: String
    public let vatAmount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        description: String,
        documentNumber: Nullable<String>,
        accountCode: String,
        netAmount: String,
        vatAmount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.description = description
        self.documentNumber = documentNumber
        self.accountCode = accountCode
        self.netAmount = netAmount
        self.vatAmount = vatAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.description = try container.decode(String.self, forKey: .description)
        self.documentNumber = try container.decode(Nullable<String>.self, forKey: .documentNumber)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.netAmount = try container.decode(String.self, forKey: .netAmount)
        self.vatAmount = try container.decode(String.self, forKey: .vatAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.documentNumber, forKey: .documentNumber)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.netAmount, forKey: .netAmount)
        try container.encode(self.vatAmount, forKey: .vatAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case description
        case documentNumber
        case accountCode
        case netAmount
        case vatAmount
    }
}