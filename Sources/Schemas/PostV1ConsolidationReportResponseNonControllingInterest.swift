import Foundation

public struct PostV1ConsolidationReportResponseNonControllingInterest: Codable, Hashable, Sendable {
    public let equity: String
    public let result: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        equity: String,
        result: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.equity = equity
        self.result = result
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.equity = try container.decode(String.self, forKey: .equity)
        self.result = try container.decode(String.self, forKey: .result)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.equity, forKey: .equity)
        try container.encode(self.result, forKey: .result)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case equity
        case result
    }
}