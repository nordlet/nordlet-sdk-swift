import Foundation

extension Requests {
    public struct GbVatObligationsListDeclarationsRequest: Codable, Hashable, Sendable {
        /// Facts of the browser the user files from, which HMRC requires with every VAT (MTD) API call: `navigator.userAgent`, a UUID the browser keeps for the device, every screen (width, height, scaling factor, colour depth in bits), the window size in pixels and the time zone as `UTC±hh:mm`.
        public let device: GbVatObligationsListDeclarationsRequestDevice
        public let from: CalendarDate?
        public let to: CalendarDate?
        public let status: GbVatObligationsListDeclarationsRequestStatus?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            device: GbVatObligationsListDeclarationsRequestDevice,
            from: CalendarDate? = nil,
            to: CalendarDate? = nil,
            status: GbVatObligationsListDeclarationsRequestStatus? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.device = device
            self.from = from
            self.to = to
            self.status = status
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.device = try container.decode(GbVatObligationsListDeclarationsRequestDevice.self, forKey: .device)
            self.from = try container.decodeIfPresent(CalendarDate.self, forKey: .from)
            self.to = try container.decodeIfPresent(CalendarDate.self, forKey: .to)
            self.status = try container.decodeIfPresent(GbVatObligationsListDeclarationsRequestStatus.self, forKey: .status)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.device, forKey: .device)
            try container.encodeIfPresent(self.from, forKey: .from)
            try container.encodeIfPresent(self.to, forKey: .to)
            try container.encodeIfPresent(self.status, forKey: .status)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case device
            case from
            case to
            case status
        }
    }
}