import Foundation

public struct GbVatReturnsGetDeclarationsRequestDeviceScreensItem: Codable, Hashable, Sendable {
    public let width: Int64
    public let height: Int64
    public let scalingFactor: Double
    public let colourDepth: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        width: Int64,
        height: Int64,
        scalingFactor: Double,
        colourDepth: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.width = width
        self.height = height
        self.scalingFactor = scalingFactor
        self.colourDepth = colourDepth
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.width = try container.decode(Int64.self, forKey: .width)
        self.height = try container.decode(Int64.self, forKey: .height)
        self.scalingFactor = try container.decode(Double.self, forKey: .scalingFactor)
        self.colourDepth = try container.decode(Int64.self, forKey: .colourDepth)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.width, forKey: .width)
        try container.encode(self.height, forKey: .height)
        try container.encode(self.scalingFactor, forKey: .scalingFactor)
        try container.encode(self.colourDepth, forKey: .colourDepth)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case width
        case height
        case scalingFactor
        case colourDepth
    }
}