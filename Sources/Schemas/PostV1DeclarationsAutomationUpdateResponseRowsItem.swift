import Foundation

public struct PostV1DeclarationsAutomationUpdateResponseRowsItem: Codable, Hashable, Sendable {
    public let ruleKey: String
    public let title: String
    public let country: String
    public let system: String
    public let enabled: Bool
    public let applies: Bool
    public let configured: Bool
    public let certificate: PostV1DeclarationsAutomationUpdateResponseRowsItemCertificate
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ruleKey: String,
        title: String,
        country: String,
        system: String,
        enabled: Bool,
        applies: Bool,
        configured: Bool,
        certificate: PostV1DeclarationsAutomationUpdateResponseRowsItemCertificate,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ruleKey = ruleKey
        self.title = title
        self.country = country
        self.system = system
        self.enabled = enabled
        self.applies = applies
        self.configured = configured
        self.certificate = certificate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ruleKey = try container.decode(String.self, forKey: .ruleKey)
        self.title = try container.decode(String.self, forKey: .title)
        self.country = try container.decode(String.self, forKey: .country)
        self.system = try container.decode(String.self, forKey: .system)
        self.enabled = try container.decode(Bool.self, forKey: .enabled)
        self.applies = try container.decode(Bool.self, forKey: .applies)
        self.configured = try container.decode(Bool.self, forKey: .configured)
        self.certificate = try container.decode(PostV1DeclarationsAutomationUpdateResponseRowsItemCertificate.self, forKey: .certificate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ruleKey, forKey: .ruleKey)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.enabled, forKey: .enabled)
        try container.encode(self.applies, forKey: .applies)
        try container.encode(self.configured, forKey: .configured)
        try container.encode(self.certificate, forKey: .certificate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ruleKey
        case title
        case country
        case system
        case enabled
        case applies
        case configured
        case certificate
    }
}