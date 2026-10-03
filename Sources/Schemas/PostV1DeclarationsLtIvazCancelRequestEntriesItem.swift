import Foundation

public struct PostV1DeclarationsLtIvazCancelRequestEntriesItem: Codable, Hashable, Sendable {
    public let waybillId: String
    public let reason: PostV1DeclarationsLtIvazCancelRequestEntriesItemReason
    public let additionalInfo: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        waybillId: String,
        reason: PostV1DeclarationsLtIvazCancelRequestEntriesItemReason,
        additionalInfo: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.waybillId = waybillId
        self.reason = reason
        self.additionalInfo = additionalInfo
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.waybillId = try container.decode(String.self, forKey: .waybillId)
        self.reason = try container.decode(PostV1DeclarationsLtIvazCancelRequestEntriesItemReason.self, forKey: .reason)
        self.additionalInfo = try container.decodeIfPresent(String.self, forKey: .additionalInfo)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.waybillId, forKey: .waybillId)
        try container.encode(self.reason, forKey: .reason)
        try container.encodeIfPresent(self.additionalInfo, forKey: .additionalInfo)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case waybillId
        case reason
        case additionalInfo
    }
}