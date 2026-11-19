import Foundation

extension Requests {
    public struct GbVatPenaltiesGetDeclarationsRequest: Codable, Hashable, Sendable {
        /// Facts of the browser the user files from, which HMRC requires with every VAT (MTD) API call: `navigator.userAgent`, a UUID the browser keeps for the device, every screen (width, height, scaling factor, colour depth in bits), the window size in pixels and the time zone as `UTC±hh:mm`.
        public let device: GbVatPenaltiesGetDeclarationsRequestDevice
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            device: GbVatPenaltiesGetDeclarationsRequestDevice,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.device = device
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.device = try container.decode(GbVatPenaltiesGetDeclarationsRequestDevice.self, forKey: .device)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.device, forKey: .device)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case device
        }
    }
}