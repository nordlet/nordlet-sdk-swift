import Foundation

public struct PostV1DeclarationsEuSmeThresholdsListResponse: Codable, Hashable, Sendable {
    public let nationalCapEur: String
    public let unionTurnoverCapEur: String
    public let thresholds: [PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        nationalCapEur: String,
        unionTurnoverCapEur: String,
        thresholds: [PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.nationalCapEur = nationalCapEur
        self.unionTurnoverCapEur = unionTurnoverCapEur
        self.thresholds = thresholds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nationalCapEur = try container.decode(String.self, forKey: .nationalCapEur)
        self.unionTurnoverCapEur = try container.decode(String.self, forKey: .unionTurnoverCapEur)
        self.thresholds = try container.decode([PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItem].self, forKey: .thresholds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.nationalCapEur, forKey: .nationalCapEur)
        try container.encode(self.unionTurnoverCapEur, forKey: .unionTurnoverCapEur)
        try container.encode(self.thresholds, forKey: .thresholds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case nationalCapEur
        case unionTurnoverCapEur
        case thresholds
    }
}