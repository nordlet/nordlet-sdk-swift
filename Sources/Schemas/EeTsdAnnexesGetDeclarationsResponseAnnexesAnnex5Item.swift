import Foundation

public struct EeTsdAnnexesGetDeclarationsResponseAnnexesAnnex5Item: Codable, Hashable, Sendable {
    /// The element of tsd_schema, named by its code
    public let element: String
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        element: String,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.element = element
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.element = try container.decode(String.self, forKey: .element)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.element, forKey: .element)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case element
        case amount
    }
}