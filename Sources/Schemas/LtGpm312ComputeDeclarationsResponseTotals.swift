import Foundation

public struct LtGpm312ComputeDeclarationsResponseTotals: Codable, Hashable, Sendable {
    public let paidAmount: String
    public let gpmWithheld: String
    public let persons: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        paidAmount: String,
        gpmWithheld: String,
        persons: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.paidAmount = paidAmount
        self.gpmWithheld = gpmWithheld
        self.persons = persons
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.paidAmount = try container.decode(String.self, forKey: .paidAmount)
        self.gpmWithheld = try container.decode(String.self, forKey: .gpmWithheld)
        self.persons = try container.decode(Int64.self, forKey: .persons)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.paidAmount, forKey: .paidAmount)
        try container.encode(self.gpmWithheld, forKey: .gpmWithheld)
        try container.encode(self.persons, forKey: .persons)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case paidAmount
        case gpmWithheld
        case persons
    }
}