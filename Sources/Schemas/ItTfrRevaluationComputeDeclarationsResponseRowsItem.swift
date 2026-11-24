import Foundation

public struct ItTfrRevaluationComputeDeclarationsResponseRowsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let name: String
    public let fund: String
    public let revaluation: String
    public let substituteTax: String
    public let fundAfter: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        name: String,
        fund: String,
        revaluation: String,
        substituteTax: String,
        fundAfter: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.name = name
        self.fund = fund
        self.revaluation = revaluation
        self.substituteTax = substituteTax
        self.fundAfter = fundAfter
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.name = try container.decode(String.self, forKey: .name)
        self.fund = try container.decode(String.self, forKey: .fund)
        self.revaluation = try container.decode(String.self, forKey: .revaluation)
        self.substituteTax = try container.decode(String.self, forKey: .substituteTax)
        self.fundAfter = try container.decode(String.self, forKey: .fundAfter)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.fund, forKey: .fund)
        try container.encode(self.revaluation, forKey: .revaluation)
        try container.encode(self.substituteTax, forKey: .substituteTax)
        try container.encode(self.fundAfter, forKey: .fundAfter)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case name
        case fund
        case revaluation
        case substituteTax
        case fundAfter
    }
}