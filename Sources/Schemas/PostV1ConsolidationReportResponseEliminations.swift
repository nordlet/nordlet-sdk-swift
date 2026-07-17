import Foundation

public struct PostV1ConsolidationReportResponseEliminations: Codable, Hashable, Sendable {
    public let applied: [PostV1ConsolidationReportResponseEliminationsAppliedItem]
    public let balanced: Bool
    public let net: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        applied: [PostV1ConsolidationReportResponseEliminationsAppliedItem],
        balanced: Bool,
        net: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.applied = applied
        self.balanced = balanced
        self.net = net
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.applied = try container.decode([PostV1ConsolidationReportResponseEliminationsAppliedItem].self, forKey: .applied)
        self.balanced = try container.decode(Bool.self, forKey: .balanced)
        self.net = try container.decode(String.self, forKey: .net)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.applied, forKey: .applied)
        try container.encode(self.balanced, forKey: .balanced)
        try container.encode(self.net, forKey: .net)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case applied
        case balanced
        case net
    }
}