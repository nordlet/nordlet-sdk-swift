import Foundation

public struct EuOwnGoodsTransfersComputeDeclarationsResponseRowsItem: Codable, Hashable, Sendable {
    public let destinationCountryCode: String
    public let dispatchCountryCode: String
    public let taxableAmount: String
    public let transfers: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        destinationCountryCode: String,
        dispatchCountryCode: String,
        taxableAmount: String,
        transfers: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.destinationCountryCode = destinationCountryCode
        self.dispatchCountryCode = dispatchCountryCode
        self.taxableAmount = taxableAmount
        self.transfers = transfers
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.destinationCountryCode = try container.decode(String.self, forKey: .destinationCountryCode)
        self.dispatchCountryCode = try container.decode(String.self, forKey: .dispatchCountryCode)
        self.taxableAmount = try container.decode(String.self, forKey: .taxableAmount)
        self.transfers = try container.decode(Int64.self, forKey: .transfers)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.destinationCountryCode, forKey: .destinationCountryCode)
        try container.encode(self.dispatchCountryCode, forKey: .dispatchCountryCode)
        try container.encode(self.taxableAmount, forKey: .taxableAmount)
        try container.encode(self.transfers, forKey: .transfers)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case destinationCountryCode
        case dispatchCountryCode
        case taxableAmount
        case transfers
    }
}