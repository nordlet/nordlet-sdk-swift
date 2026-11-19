import Foundation

extension Requests {
    public struct SubmitCalendarRequest: Codable, Hashable, Sendable {
        public let key: String
        public let amend: Bool?
        public let correction: SubmitCalendarRequestCorrection?
        public let documentKeys: [String]?
        /// Facts of the browser the user files from, which HMRC requires with every VAT (MTD) API call: `navigator.userAgent`, a UUID the browser keeps for the device, every screen (width, height, scaling factor, colour depth in bits), the window size in pixels and the time zone as `UTC±hh:mm`.
        public let device: SubmitCalendarRequestDevice?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            key: String,
            amend: Bool? = nil,
            correction: SubmitCalendarRequestCorrection? = nil,
            documentKeys: [String]? = nil,
            device: SubmitCalendarRequestDevice? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.key = key
            self.amend = amend
            self.correction = correction
            self.documentKeys = documentKeys
            self.device = device
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.key = try container.decode(String.self, forKey: .key)
            self.amend = try container.decodeIfPresent(Bool.self, forKey: .amend)
            self.correction = try container.decodeIfPresent(SubmitCalendarRequestCorrection.self, forKey: .correction)
            self.documentKeys = try container.decodeIfPresent([String].self, forKey: .documentKeys)
            self.device = try container.decodeIfPresent(SubmitCalendarRequestDevice.self, forKey: .device)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.key, forKey: .key)
            try container.encodeIfPresent(self.amend, forKey: .amend)
            try container.encodeIfPresent(self.correction, forKey: .correction)
            try container.encodeIfPresent(self.documentKeys, forKey: .documentKeys)
            try container.encodeIfPresent(self.device, forKey: .device)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case key
            case amend
            case correction
            case documentKeys
            case device
        }
    }
}