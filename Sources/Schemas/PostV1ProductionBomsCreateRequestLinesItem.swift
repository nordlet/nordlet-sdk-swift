import Foundation

public struct PostV1ProductionBomsCreateRequestLinesItem: Codable, Hashable, Sendable {
    public let componentItemId: String
    public let quantity: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        componentItemId: String,
        quantity: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.componentItemId = componentItemId
        self.quantity = quantity
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.componentItemId = try container.decode(String.self, forKey: .componentItemId)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.componentItemId, forKey: .componentItemId)
        try container.encode(self.quantity, forKey: .quantity)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case componentItemId
        case quantity
    }
}