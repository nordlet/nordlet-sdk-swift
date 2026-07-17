import Foundation

public struct PostV1AccountCompaniesSelectResponse: Codable, Hashable, Sendable {
    public let activeCompanyId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        activeCompanyId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.activeCompanyId = activeCompanyId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.activeCompanyId = try container.decode(String.self, forKey: .activeCompanyId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.activeCompanyId, forKey: .activeCompanyId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case activeCompanyId
    }
}