import Foundation

public struct PostV1DeclarationsPlZusDraComputeResponseRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let label: String
    public let insured: String
    public let payer: String
    public let total: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        label: String,
        insured: String,
        payer: String,
        total: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.label = label
        self.insured = insured
        self.payer = payer
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.label = try container.decode(String.self, forKey: .label)
        self.insured = try container.decode(String.self, forKey: .insured)
        self.payer = try container.decode(String.self, forKey: .payer)
        self.total = try container.decode(String.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.label, forKey: .label)
        try container.encode(self.insured, forKey: .insured)
        try container.encode(self.payer, forKey: .payer)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case label
        case insured
        case payer
        case total
    }
}