import Foundation

public struct UsDeWithholdingGetDeclarationsResponse: Codable, Hashable, Sendable {
    public let from: String
    public let to: String
    public let employees: Double
    public let wages: String
    public let taxWithheld: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        from: String,
        to: String,
        employees: Double,
        wages: String,
        taxWithheld: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.from = from
        self.to = to
        self.employees = employees
        self.wages = wages
        self.taxWithheld = taxWithheld
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.from = try container.decode(String.self, forKey: .from)
        self.to = try container.decode(String.self, forKey: .to)
        self.employees = try container.decode(Double.self, forKey: .employees)
        self.wages = try container.decode(String.self, forKey: .wages)
        self.taxWithheld = try container.decode(String.self, forKey: .taxWithheld)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.from, forKey: .from)
        try container.encode(self.to, forKey: .to)
        try container.encode(self.employees, forKey: .employees)
        try container.encode(self.wages, forKey: .wages)
        try container.encode(self.taxWithheld, forKey: .taxWithheld)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case to
        case employees
        case wages
        case taxWithheld
    }
}