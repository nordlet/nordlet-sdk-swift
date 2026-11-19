import Foundation

public struct Us941GetDeclarationsResponseLine5C: Codable, Hashable, Sendable {
    public let wages: String
    public let tax: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        wages: String,
        tax: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.wages = wages
        self.tax = tax
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.wages = try container.decode(String.self, forKey: .wages)
        self.tax = try container.decode(String.self, forKey: .tax)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.wages, forKey: .wages)
        try container.encode(self.tax, forKey: .tax)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case wages
        case tax
    }
}