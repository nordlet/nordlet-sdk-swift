import Foundation

extension Requests {
    public struct SettingsUpdateCaptureRequest: Codable, Hashable, Sendable {
        public let intakeEnabled: Bool?
        public let captureAutoExtract: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            intakeEnabled: Bool? = nil,
            captureAutoExtract: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.intakeEnabled = intakeEnabled
            self.captureAutoExtract = captureAutoExtract
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.intakeEnabled = try container.decodeIfPresent(Bool.self, forKey: .intakeEnabled)
            self.captureAutoExtract = try container.decodeIfPresent(Bool.self, forKey: .captureAutoExtract)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.intakeEnabled, forKey: .intakeEnabled)
            try container.encodeIfPresent(self.captureAutoExtract, forKey: .captureAutoExtract)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case intakeEnabled
            case captureAutoExtract
        }
    }
}