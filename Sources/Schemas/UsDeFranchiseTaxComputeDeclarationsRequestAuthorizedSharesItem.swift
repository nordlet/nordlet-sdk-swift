import Foundation

public struct UsDeFranchiseTaxComputeDeclarationsRequestAuthorizedSharesItem: Codable, Hashable, Sendable {
    public let shares: Int64
    public let parValue: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        shares: Int64,
        parValue: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.shares = shares
        self.parValue = parValue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.shares = try container.decode(Int64.self, forKey: .shares)
        self.parValue = try container.decodeIfPresent(String.self, forKey: .parValue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.shares, forKey: .shares)
        try container.encodeIfPresent(self.parValue, forKey: .parValue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case shares
        case parValue
    }
}