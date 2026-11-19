import Foundation

/// Facts of the browser the user files from, which HMRC requires with every VAT (MTD) API call: `navigator.userAgent`, a UUID the browser keeps for the device, every screen (width, height, scaling factor, colour depth in bits), the window size in pixels and the time zone as `UTC±hh:mm`.
public struct GbVatReturnsGetDeclarationsRequestDevice: Codable, Hashable, Sendable {
    public let userAgent: String
    public let deviceId: String
    public let screens: [GbVatReturnsGetDeclarationsRequestDeviceScreensItem]
    public let windowSize: GbVatReturnsGetDeclarationsRequestDeviceWindowSize
    public let timezone: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        userAgent: String,
        deviceId: String,
        screens: [GbVatReturnsGetDeclarationsRequestDeviceScreensItem],
        windowSize: GbVatReturnsGetDeclarationsRequestDeviceWindowSize,
        timezone: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.userAgent = userAgent
        self.deviceId = deviceId
        self.screens = screens
        self.windowSize = windowSize
        self.timezone = timezone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.userAgent = try container.decode(String.self, forKey: .userAgent)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.screens = try container.decode([GbVatReturnsGetDeclarationsRequestDeviceScreensItem].self, forKey: .screens)
        self.windowSize = try container.decode(GbVatReturnsGetDeclarationsRequestDeviceWindowSize.self, forKey: .windowSize)
        self.timezone = try container.decode(String.self, forKey: .timezone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.userAgent, forKey: .userAgent)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.screens, forKey: .screens)
        try container.encode(self.windowSize, forKey: .windowSize)
        try container.encode(self.timezone, forKey: .timezone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case userAgent
        case deviceId
        case screens
        case windowSize
        case timezone
    }
}