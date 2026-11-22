import Foundation

public struct UsDeWithholdingGetDeclarationsResponseWthTax: Codable, Hashable, Sendable {
    public let taxpayerId: Nullable<String>
    public let taxPeriodBeginning: String
    public let taxPeriodEnding: String
    public let line1: String
    public let line2: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taxpayerId: Nullable<String>,
        taxPeriodBeginning: String,
        taxPeriodEnding: String,
        line1: String,
        line2: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taxpayerId = taxpayerId
        self.taxPeriodBeginning = taxPeriodBeginning
        self.taxPeriodEnding = taxPeriodEnding
        self.line1 = line1
        self.line2 = line2
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taxpayerId = try container.decode(Nullable<String>.self, forKey: .taxpayerId)
        self.taxPeriodBeginning = try container.decode(String.self, forKey: .taxPeriodBeginning)
        self.taxPeriodEnding = try container.decode(String.self, forKey: .taxPeriodEnding)
        self.line1 = try container.decode(String.self, forKey: .line1)
        self.line2 = try container.decode(String.self, forKey: .line2)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taxpayerId, forKey: .taxpayerId)
        try container.encode(self.taxPeriodBeginning, forKey: .taxPeriodBeginning)
        try container.encode(self.taxPeriodEnding, forKey: .taxPeriodEnding)
        try container.encode(self.line1, forKey: .line1)
        try container.encode(self.line2, forKey: .line2)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taxpayerId
        case taxPeriodBeginning
        case taxPeriodEnding
        case line1
        case line2
    }
}