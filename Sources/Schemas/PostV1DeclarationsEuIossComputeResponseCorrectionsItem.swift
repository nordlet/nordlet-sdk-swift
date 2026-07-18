import Foundation

public struct PostV1DeclarationsEuIossComputeResponseCorrectionsItem: Codable, Hashable, Sendable {
    public let countryCode: String
    public let periodYear: Int64
    public let periodQuarter: Nullable<Int64>
    public let periodMonth: Nullable<Int64>
    public let taxableAmount: String
    public let vatAmount: String
    public let documents: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        periodYear: Int64,
        periodQuarter: Nullable<Int64>,
        periodMonth: Nullable<Int64>,
        taxableAmount: String,
        vatAmount: String,
        documents: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.periodYear = periodYear
        self.periodQuarter = periodQuarter
        self.periodMonth = periodMonth
        self.taxableAmount = taxableAmount
        self.vatAmount = vatAmount
        self.documents = documents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.periodYear = try container.decode(Int64.self, forKey: .periodYear)
        self.periodQuarter = try container.decode(Nullable<Int64>.self, forKey: .periodQuarter)
        self.periodMonth = try container.decode(Nullable<Int64>.self, forKey: .periodMonth)
        self.taxableAmount = try container.decode(String.self, forKey: .taxableAmount)
        self.vatAmount = try container.decode(String.self, forKey: .vatAmount)
        self.documents = try container.decode(Int64.self, forKey: .documents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.periodYear, forKey: .periodYear)
        try container.encode(self.periodQuarter, forKey: .periodQuarter)
        try container.encode(self.periodMonth, forKey: .periodMonth)
        try container.encode(self.taxableAmount, forKey: .taxableAmount)
        try container.encode(self.vatAmount, forKey: .vatAmount)
        try container.encode(self.documents, forKey: .documents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case periodYear
        case periodQuarter
        case periodMonth
        case taxableAmount
        case vatAmount
        case documents
    }
}