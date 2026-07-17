import Foundation

public struct PostV1PosReportsCreateRequestVatLinesItem: Codable, Hashable, Sendable {
    public let vatRatePercent: String
    public let netAmount: String
    public let vatAmount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        vatRatePercent: String,
        netAmount: String,
        vatAmount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.vatRatePercent = vatRatePercent
        self.netAmount = netAmount
        self.vatAmount = vatAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.vatRatePercent = try container.decode(String.self, forKey: .vatRatePercent)
        self.netAmount = try container.decode(String.self, forKey: .netAmount)
        self.vatAmount = try container.decode(String.self, forKey: .vatAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.netAmount, forKey: .netAmount)
        try container.encode(self.vatAmount, forKey: .vatAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case vatRatePercent
        case netAmount
        case vatAmount
    }
}