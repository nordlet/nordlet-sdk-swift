import Foundation

public struct SubmissionsCorrectionPreviewDeclarationsResponse: Codable, Hashable, Sendable {
    public let needed: Bool
    public let changeCount: Int64
    public let changes: [SubmissionsCorrectionPreviewDeclarationsResponseChangesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        needed: Bool,
        changeCount: Int64,
        changes: [SubmissionsCorrectionPreviewDeclarationsResponseChangesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.needed = needed
        self.changeCount = changeCount
        self.changes = changes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.needed = try container.decode(Bool.self, forKey: .needed)
        self.changeCount = try container.decode(Int64.self, forKey: .changeCount)
        self.changes = try container.decode([SubmissionsCorrectionPreviewDeclarationsResponseChangesItem].self, forKey: .changes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.needed, forKey: .needed)
        try container.encode(self.changeCount, forKey: .changeCount)
        try container.encode(self.changes, forKey: .changes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case needed
        case changeCount
        case changes
    }
}