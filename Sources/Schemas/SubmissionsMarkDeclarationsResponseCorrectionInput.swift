import Foundation

public struct SubmissionsMarkDeclarationsResponseCorrectionInput: Codable, Hashable, Sendable {
    public let reason: String?
    public let reasonCode: String?
    public let authorityReference: String?
    public let discoveredOn: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        reason: String? = nil,
        reasonCode: String? = nil,
        authorityReference: String? = nil,
        discoveredOn: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.reason = reason
        self.reasonCode = reasonCode
        self.authorityReference = authorityReference
        self.discoveredOn = discoveredOn
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
        self.reasonCode = try container.decodeIfPresent(String.self, forKey: .reasonCode)
        self.authorityReference = try container.decodeIfPresent(String.self, forKey: .authorityReference)
        self.discoveredOn = try container.decodeIfPresent(String.self, forKey: .discoveredOn)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.reason, forKey: .reason)
        try container.encodeIfPresent(self.reasonCode, forKey: .reasonCode)
        try container.encodeIfPresent(self.authorityReference, forKey: .authorityReference)
        try container.encodeIfPresent(self.discoveredOn, forKey: .discoveredOn)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case reason
        case reasonCode
        case authorityReference
        case discoveredOn
    }
}