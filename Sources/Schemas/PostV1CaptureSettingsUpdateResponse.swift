import Foundation

public struct PostV1CaptureSettingsUpdateResponse: Codable, Hashable, Sendable {
    public let intakeEnabled: Bool
    public let captureAutoExtract: Bool
    public let intakeAddress: Nullable<String>
    public let ocrConfigured: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        intakeEnabled: Bool,
        captureAutoExtract: Bool,
        intakeAddress: Nullable<String>,
        ocrConfigured: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.intakeEnabled = intakeEnabled
        self.captureAutoExtract = captureAutoExtract
        self.intakeAddress = intakeAddress
        self.ocrConfigured = ocrConfigured
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.intakeEnabled = try container.decode(Bool.self, forKey: .intakeEnabled)
        self.captureAutoExtract = try container.decode(Bool.self, forKey: .captureAutoExtract)
        self.intakeAddress = try container.decode(Nullable<String>.self, forKey: .intakeAddress)
        self.ocrConfigured = try container.decode(Bool.self, forKey: .ocrConfigured)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.intakeEnabled, forKey: .intakeEnabled)
        try container.encode(self.captureAutoExtract, forKey: .captureAutoExtract)
        try container.encode(self.intakeAddress, forKey: .intakeAddress)
        try container.encode(self.ocrConfigured, forKey: .ocrConfigured)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case intakeEnabled
        case captureAutoExtract
        case intakeAddress
        case ocrConfigured
    }
}