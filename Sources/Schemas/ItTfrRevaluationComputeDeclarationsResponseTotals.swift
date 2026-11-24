import Foundation

public struct ItTfrRevaluationComputeDeclarationsResponseTotals: Codable, Hashable, Sendable {
    public let revaluation: String
    public let substituteTax: String
    public let accontoNextYear: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        revaluation: String,
        substituteTax: String,
        accontoNextYear: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.revaluation = revaluation
        self.substituteTax = substituteTax
        self.accontoNextYear = accontoNextYear
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.revaluation = try container.decode(String.self, forKey: .revaluation)
        self.substituteTax = try container.decode(String.self, forKey: .substituteTax)
        self.accontoNextYear = try container.decode(String.self, forKey: .accontoNextYear)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.revaluation, forKey: .revaluation)
        try container.encode(self.substituteTax, forKey: .substituteTax)
        try container.encode(self.accontoNextYear, forKey: .accontoNextYear)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case revaluation
        case substituteTax
        case accontoNextYear
    }
}