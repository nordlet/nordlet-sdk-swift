import Foundation

public struct PostV1DeclarationsPlVatUeGenerateResponseRowsItem: Codable, Hashable, Sendable {
    public let section: PostV1DeclarationsPlVatUeGenerateResponseRowsItemSection
    public let countryCode: String
    public let vatNumber: String
    public let partnerName: String
    public let amount: String
    public let documents: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        section: PostV1DeclarationsPlVatUeGenerateResponseRowsItemSection,
        countryCode: String,
        vatNumber: String,
        partnerName: String,
        amount: String,
        documents: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.section = section
        self.countryCode = countryCode
        self.vatNumber = vatNumber
        self.partnerName = partnerName
        self.amount = amount
        self.documents = documents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.section = try container.decode(PostV1DeclarationsPlVatUeGenerateResponseRowsItemSection.self, forKey: .section)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.vatNumber = try container.decode(String.self, forKey: .vatNumber)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.documents = try container.decode([String].self, forKey: .documents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.section, forKey: .section)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.vatNumber, forKey: .vatNumber)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.documents, forKey: .documents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case section
        case countryCode
        case vatNumber
        case partnerName
        case amount
        case documents
    }
}