import Foundation

public struct LtPln204ComputeDeclarationsResponseAnnexZItem: Codable, Hashable, Sendable {
    public let code: String
    public let amount: String
    public let description: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        amount: String,
        description: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.amount = amount
        self.description = description
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.description = try container.decode(String.self, forKey: .description)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.description, forKey: .description)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case amount
        case description
    }
}