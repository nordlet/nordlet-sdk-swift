import Foundation

public struct UsSalesTaxGetDeclarationsResponseJurisdictionsItem: Codable, Hashable, Sendable {
    public let jurisdiction: String
    public let documents: Double
    public let taxableSales: String
    public let exemptSales: String
    public let salesTax: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        jurisdiction: String,
        documents: Double,
        taxableSales: String,
        exemptSales: String,
        salesTax: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.jurisdiction = jurisdiction
        self.documents = documents
        self.taxableSales = taxableSales
        self.exemptSales = exemptSales
        self.salesTax = salesTax
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.jurisdiction = try container.decode(String.self, forKey: .jurisdiction)
        self.documents = try container.decode(Double.self, forKey: .documents)
        self.taxableSales = try container.decode(String.self, forKey: .taxableSales)
        self.exemptSales = try container.decode(String.self, forKey: .exemptSales)
        self.salesTax = try container.decode(String.self, forKey: .salesTax)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.jurisdiction, forKey: .jurisdiction)
        try container.encode(self.documents, forKey: .documents)
        try container.encode(self.taxableSales, forKey: .taxableSales)
        try container.encode(self.exemptSales, forKey: .exemptSales)
        try container.encode(self.salesTax, forKey: .salesTax)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case jurisdiction
        case documents
        case taxableSales
        case exemptSales
        case salesTax
    }
}