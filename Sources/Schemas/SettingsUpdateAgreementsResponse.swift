import Foundation

public struct SettingsUpdateAgreementsResponse: Codable, Hashable, Sendable {
    public let autoBilling: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        autoBilling: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.autoBilling = autoBilling
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.autoBilling = try container.decode(Bool.self, forKey: .autoBilling)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.autoBilling, forKey: .autoBilling)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case autoBilling
    }
}