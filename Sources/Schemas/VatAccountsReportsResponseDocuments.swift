import Foundation

public struct VatAccountsReportsResponseDocuments: Codable, Hashable, Sendable {
    public let outputVat: String
    public let ossVat: String
    public let selfAssessedVat: String
    public let deductibleVat: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        outputVat: String,
        ossVat: String,
        selfAssessedVat: String,
        deductibleVat: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.outputVat = outputVat
        self.ossVat = ossVat
        self.selfAssessedVat = selfAssessedVat
        self.deductibleVat = deductibleVat
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.outputVat = try container.decode(String.self, forKey: .outputVat)
        self.ossVat = try container.decode(String.self, forKey: .ossVat)
        self.selfAssessedVat = try container.decode(String.self, forKey: .selfAssessedVat)
        self.deductibleVat = try container.decode(String.self, forKey: .deductibleVat)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.outputVat, forKey: .outputVat)
        try container.encode(self.ossVat, forKey: .ossVat)
        try container.encode(self.selfAssessedVat, forKey: .selfAssessedVat)
        try container.encode(self.deductibleVat, forKey: .deductibleVat)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case outputVat
        case ossVat
        case selfAssessedVat
        case deductibleVat
    }
}