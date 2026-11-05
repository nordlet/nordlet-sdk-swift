import Foundation

public struct TwoFactorGetAccountResponse: Codable, Hashable, Sendable {
    public let enabled: Bool
    public let required: Bool
    public let recoveryCodesLeft: Int64
    public let setup: Nullable<TwoFactorGetAccountResponseSetup>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        enabled: Bool,
        required: Bool,
        recoveryCodesLeft: Int64,
        setup: Nullable<TwoFactorGetAccountResponseSetup>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.enabled = enabled
        self.required = required
        self.recoveryCodesLeft = recoveryCodesLeft
        self.setup = setup
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.enabled = try container.decode(Bool.self, forKey: .enabled)
        self.required = try container.decode(Bool.self, forKey: .required)
        self.recoveryCodesLeft = try container.decode(Int64.self, forKey: .recoveryCodesLeft)
        self.setup = try container.decode(Nullable<TwoFactorGetAccountResponseSetup>.self, forKey: .setup)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.enabled, forKey: .enabled)
        try container.encode(self.required, forKey: .required)
        try container.encode(self.recoveryCodesLeft, forKey: .recoveryCodesLeft)
        try container.encode(self.setup, forKey: .setup)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case required
        case recoveryCodesLeft
        case setup
    }
}