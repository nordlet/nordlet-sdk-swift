import Foundation

public struct PostV1DeclarationsEuIossComputeResponseRowsItem: Codable, Hashable, Sendable {
    public let countryCode: String
    public let rateType: PostV1DeclarationsEuIossComputeResponseRowsItemRateType
    public let vatRatePercent: String
    public let taxableAmount: String
    public let vatAmount: String
    public let documents: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        rateType: PostV1DeclarationsEuIossComputeResponseRowsItemRateType,
        vatRatePercent: String,
        taxableAmount: String,
        vatAmount: String,
        documents: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.rateType = rateType
        self.vatRatePercent = vatRatePercent
        self.taxableAmount = taxableAmount
        self.vatAmount = vatAmount
        self.documents = documents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.rateType = try container.decode(PostV1DeclarationsEuIossComputeResponseRowsItemRateType.self, forKey: .rateType)
        self.vatRatePercent = try container.decode(String.self, forKey: .vatRatePercent)
        self.taxableAmount = try container.decode(String.self, forKey: .taxableAmount)
        self.vatAmount = try container.decode(String.self, forKey: .vatAmount)
        self.documents = try container.decode(Int64.self, forKey: .documents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.rateType, forKey: .rateType)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.taxableAmount, forKey: .taxableAmount)
        try container.encode(self.vatAmount, forKey: .vatAmount)
        try container.encode(self.documents, forKey: .documents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case rateType
        case vatRatePercent
        case taxableAmount
        case vatAmount
        case documents
    }
}