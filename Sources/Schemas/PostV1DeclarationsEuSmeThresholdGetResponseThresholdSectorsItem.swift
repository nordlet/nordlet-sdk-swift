import Foundation

public struct PostV1DeclarationsEuSmeThresholdGetResponseThresholdSectorsItem: Codable, Hashable, Sendable {
    public let label: String
    public let amount: String
    public let note: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        label: String,
        amount: String,
        note: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.label = label
        self.amount = amount
        self.note = note
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.label = try container.decode(String.self, forKey: .label)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.note = try container.decodeIfPresent(String.self, forKey: .note)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.label, forKey: .label)
        try container.encode(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.note, forKey: .note)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case label
        case amount
        case note
    }
}