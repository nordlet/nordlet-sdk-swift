import Foundation

public struct QueueListReviewResponseItemsItem: Codable, Hashable, Sendable {
    public let kind: QueueListReviewResponseItemsItemKind
    /// The id of the draft, bank transaction or partner, or the key of the filing
    public let id: String
    public let message: String
    public let fix: String
    /// The warning code of a draft_warning
    public let code: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        kind: QueueListReviewResponseItemsItemKind,
        id: String,
        message: String,
        fix: String,
        code: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.kind = kind
        self.id = id
        self.message = message
        self.fix = fix
        self.code = code
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.kind = try container.decode(QueueListReviewResponseItemsItemKind.self, forKey: .kind)
        self.id = try container.decode(String.self, forKey: .id)
        self.message = try container.decode(String.self, forKey: .message)
        self.fix = try container.decode(String.self, forKey: .fix)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.fix, forKey: .fix)
        try container.encodeIfPresent(self.code, forKey: .code)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
        case id
        case message
        case fix
        case code
    }
}