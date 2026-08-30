import Foundation

public struct PostV1AccountExportResponseConsent: Codable, Hashable, Sendable {
    public let termsVersion: Nullable<String>
    public let termsAcceptedAt: Nullable<String>
    public let dpaVersion: Nullable<String>
    public let dpaAcceptedAt: Nullable<String>
    public let currentTermsVersion: String
    public let currentDpaVersion: String
    public let required: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        termsVersion: Nullable<String>,
        termsAcceptedAt: Nullable<String>,
        dpaVersion: Nullable<String>,
        dpaAcceptedAt: Nullable<String>,
        currentTermsVersion: String,
        currentDpaVersion: String,
        required: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.termsVersion = termsVersion
        self.termsAcceptedAt = termsAcceptedAt
        self.dpaVersion = dpaVersion
        self.dpaAcceptedAt = dpaAcceptedAt
        self.currentTermsVersion = currentTermsVersion
        self.currentDpaVersion = currentDpaVersion
        self.required = required
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.termsVersion = try container.decode(Nullable<String>.self, forKey: .termsVersion)
        self.termsAcceptedAt = try container.decode(Nullable<String>.self, forKey: .termsAcceptedAt)
        self.dpaVersion = try container.decode(Nullable<String>.self, forKey: .dpaVersion)
        self.dpaAcceptedAt = try container.decode(Nullable<String>.self, forKey: .dpaAcceptedAt)
        self.currentTermsVersion = try container.decode(String.self, forKey: .currentTermsVersion)
        self.currentDpaVersion = try container.decode(String.self, forKey: .currentDpaVersion)
        self.required = try container.decode(Bool.self, forKey: .required)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.termsVersion, forKey: .termsVersion)
        try container.encode(self.termsAcceptedAt, forKey: .termsAcceptedAt)
        try container.encode(self.dpaVersion, forKey: .dpaVersion)
        try container.encode(self.dpaAcceptedAt, forKey: .dpaAcceptedAt)
        try container.encode(self.currentTermsVersion, forKey: .currentTermsVersion)
        try container.encode(self.currentDpaVersion, forKey: .currentDpaVersion)
        try container.encode(self.required, forKey: .required)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case termsVersion
        case termsAcceptedAt
        case dpaVersion
        case dpaAcceptedAt
        case currentTermsVersion
        case currentDpaVersion
        case required
    }
}