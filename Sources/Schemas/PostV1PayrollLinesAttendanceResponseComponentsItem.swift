import Foundation

public struct PostV1PayrollLinesAttendanceResponseComponentsItem: Codable, Hashable, Sendable {
    public let code: String
    public let kind: PostV1PayrollLinesAttendanceResponseComponentsItemKind
    public let amount: String
    public let rate: String?
    public let base: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        kind: PostV1PayrollLinesAttendanceResponseComponentsItemKind,
        amount: String,
        rate: String? = nil,
        base: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.kind = kind
        self.amount = amount
        self.rate = rate
        self.base = base
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.kind = try container.decode(PostV1PayrollLinesAttendanceResponseComponentsItemKind.self, forKey: .kind)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.rate = try container.decodeIfPresent(String.self, forKey: .rate)
        self.base = try container.decodeIfPresent(String.self, forKey: .base)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.rate, forKey: .rate)
        try container.encodeIfPresent(self.base, forKey: .base)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case kind
        case amount
        case rate
        case base
    }
}