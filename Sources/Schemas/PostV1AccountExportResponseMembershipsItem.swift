import Foundation

public struct PostV1AccountExportResponseMembershipsItem: Codable, Hashable, Sendable {
    public let companyId: String
    public let companyName: String
    public let role: String
    public let since: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        companyId: String,
        companyName: String,
        role: String,
        since: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.companyId = companyId
        self.companyName = companyName
        self.role = role
        self.since = since
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.companyId = try container.decode(String.self, forKey: .companyId)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.role = try container.decode(String.self, forKey: .role)
        self.since = try container.decode(String.self, forKey: .since)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.companyId, forKey: .companyId)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.since, forKey: .since)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case companyId
        case companyName
        case role
        case since
    }
}