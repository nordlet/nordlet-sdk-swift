import Foundation

public struct PostV1CaptureInboundEmailResponse: Codable, Hashable, Sendable {
    public let accepted: Int64
    public let skipped: Int64
    public let captureIds: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accepted: Int64,
        skipped: Int64,
        captureIds: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accepted = accepted
        self.skipped = skipped
        self.captureIds = captureIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accepted = try container.decode(Int64.self, forKey: .accepted)
        self.skipped = try container.decode(Int64.self, forKey: .skipped)
        self.captureIds = try container.decode([String].self, forKey: .captureIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accepted, forKey: .accepted)
        try container.encode(self.skipped, forKey: .skipped)
        try container.encode(self.captureIds, forKey: .captureIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accepted
        case skipped
        case captureIds
    }
}