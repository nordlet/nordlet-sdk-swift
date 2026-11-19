import Foundation

public struct UsW2ListDeclarationsResponseFormsItemStatesItem: Codable, Hashable, Sendable {
    public let box15: UsW2ListDeclarationsResponseFormsItemStatesItemBox15
    public let box16: String
    public let box17: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        box15: UsW2ListDeclarationsResponseFormsItemStatesItemBox15,
        box16: String,
        box17: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.box15 = box15
        self.box16 = box16
        self.box17 = box17
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.box15 = try container.decode(UsW2ListDeclarationsResponseFormsItemStatesItemBox15.self, forKey: .box15)
        self.box16 = try container.decode(String.self, forKey: .box16)
        self.box17 = try container.decode(String.self, forKey: .box17)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.box15, forKey: .box15)
        try container.encode(self.box16, forKey: .box16)
        try container.encode(self.box17, forKey: .box17)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case box15
        case box16
        case box17
    }
}