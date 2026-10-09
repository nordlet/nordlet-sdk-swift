import Foundation

public struct ExpenseReportsCreateCashRequestLinesItem: Codable, Hashable, Sendable {
    public let description: String
    public let documentNumber: String?
    public let accountCode: String
    public let netAmount: String
    public let vatAmount: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        description: String,
        documentNumber: String? = nil,
        accountCode: String,
        netAmount: String,
        vatAmount: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.description = description
        self.documentNumber = documentNumber
        self.accountCode = accountCode
        self.netAmount = netAmount
        self.vatAmount = vatAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.description = try container.decode(String.self, forKey: .description)
        self.documentNumber = try container.decodeIfPresent(String.self, forKey: .documentNumber)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.netAmount = try container.decode(String.self, forKey: .netAmount)
        self.vatAmount = try container.decodeIfPresent(String.self, forKey: .vatAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.description, forKey: .description)
        try container.encodeIfPresent(self.documentNumber, forKey: .documentNumber)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.netAmount, forKey: .netAmount)
        try container.encodeIfPresent(self.vatAmount, forKey: .vatAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case documentNumber
        case accountCode
        case netAmount
        case vatAmount
    }
}