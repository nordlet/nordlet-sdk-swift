import Foundation

public struct ExpenseReportsGetCashResponseLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let description: String
    public let documentNumber: Nullable<String>
    public let accountCode: String
    public let partnerId: Nullable<String>
    public let vatClassifierCode: Nullable<String>
    public let netAmount: String
    public let vatAmount: String
    public let deductibleVat: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        description: String,
        documentNumber: Nullable<String>,
        accountCode: String,
        partnerId: Nullable<String>,
        vatClassifierCode: Nullable<String>,
        netAmount: String,
        vatAmount: String,
        deductibleVat: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.description = description
        self.documentNumber = documentNumber
        self.accountCode = accountCode
        self.partnerId = partnerId
        self.vatClassifierCode = vatClassifierCode
        self.netAmount = netAmount
        self.vatAmount = vatAmount
        self.deductibleVat = deductibleVat
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.description = try container.decode(String.self, forKey: .description)
        self.documentNumber = try container.decode(Nullable<String>.self, forKey: .documentNumber)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.vatClassifierCode = try container.decode(Nullable<String>.self, forKey: .vatClassifierCode)
        self.netAmount = try container.decode(String.self, forKey: .netAmount)
        self.vatAmount = try container.decode(String.self, forKey: .vatAmount)
        self.deductibleVat = try container.decode(Nullable<String>.self, forKey: .deductibleVat)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.documentNumber, forKey: .documentNumber)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.vatClassifierCode, forKey: .vatClassifierCode)
        try container.encode(self.netAmount, forKey: .netAmount)
        try container.encode(self.vatAmount, forKey: .vatAmount)
        try container.encode(self.deductibleVat, forKey: .deductibleVat)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case description
        case documentNumber
        case accountCode
        case partnerId
        case vatClassifierCode
        case netAmount
        case vatAmount
        case deductibleVat
    }
}