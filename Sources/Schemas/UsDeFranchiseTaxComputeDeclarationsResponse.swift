import Foundation

public struct UsDeFranchiseTaxComputeDeclarationsResponse: Codable, Hashable, Sendable {
    public let authorizedShares: Double
    public let authorizedSharesMethodTax: String
    public let assumedPar: Nullable<String>
    public let assumedParValueCapital: Nullable<String>
    public let assumedNoParCapital: Nullable<String>
    public let assumedParValueCapitalMethodTax: Nullable<String>
    public let method: UsDeFranchiseTaxComputeDeclarationsResponseMethod
    public let tax: String
    public let annualReportFee: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        authorizedShares: Double,
        authorizedSharesMethodTax: String,
        assumedPar: Nullable<String>,
        assumedParValueCapital: Nullable<String>,
        assumedNoParCapital: Nullable<String>,
        assumedParValueCapitalMethodTax: Nullable<String>,
        method: UsDeFranchiseTaxComputeDeclarationsResponseMethod,
        tax: String,
        annualReportFee: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.authorizedShares = authorizedShares
        self.authorizedSharesMethodTax = authorizedSharesMethodTax
        self.assumedPar = assumedPar
        self.assumedParValueCapital = assumedParValueCapital
        self.assumedNoParCapital = assumedNoParCapital
        self.assumedParValueCapitalMethodTax = assumedParValueCapitalMethodTax
        self.method = method
        self.tax = tax
        self.annualReportFee = annualReportFee
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.authorizedShares = try container.decode(Double.self, forKey: .authorizedShares)
        self.authorizedSharesMethodTax = try container.decode(String.self, forKey: .authorizedSharesMethodTax)
        self.assumedPar = try container.decode(Nullable<String>.self, forKey: .assumedPar)
        self.assumedParValueCapital = try container.decode(Nullable<String>.self, forKey: .assumedParValueCapital)
        self.assumedNoParCapital = try container.decode(Nullable<String>.self, forKey: .assumedNoParCapital)
        self.assumedParValueCapitalMethodTax = try container.decode(Nullable<String>.self, forKey: .assumedParValueCapitalMethodTax)
        self.method = try container.decode(UsDeFranchiseTaxComputeDeclarationsResponseMethod.self, forKey: .method)
        self.tax = try container.decode(String.self, forKey: .tax)
        self.annualReportFee = try container.decode(String.self, forKey: .annualReportFee)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.authorizedShares, forKey: .authorizedShares)
        try container.encode(self.authorizedSharesMethodTax, forKey: .authorizedSharesMethodTax)
        try container.encode(self.assumedPar, forKey: .assumedPar)
        try container.encode(self.assumedParValueCapital, forKey: .assumedParValueCapital)
        try container.encode(self.assumedNoParCapital, forKey: .assumedNoParCapital)
        try container.encode(self.assumedParValueCapitalMethodTax, forKey: .assumedParValueCapitalMethodTax)
        try container.encode(self.method, forKey: .method)
        try container.encode(self.tax, forKey: .tax)
        try container.encode(self.annualReportFee, forKey: .annualReportFee)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case authorizedShares
        case authorizedSharesMethodTax
        case assumedPar
        case assumedParValueCapital
        case assumedNoParCapital
        case assumedParValueCapitalMethodTax
        case method
        case tax
        case annualReportFee
    }
}