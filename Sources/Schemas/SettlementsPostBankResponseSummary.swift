import Foundation

public struct SettlementsPostBankResponseSummary: Codable, Hashable, Sendable {
    public let receivableApplied: String
    public let commissionAmount: String
    public let sellerAmount: String
    public let feeAmount: String
    public let suspenseAmount: String
    public let fxRate: String
    public let exchangeDifference: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        receivableApplied: String,
        commissionAmount: String,
        sellerAmount: String,
        feeAmount: String,
        suspenseAmount: String,
        fxRate: String,
        exchangeDifference: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.receivableApplied = receivableApplied
        self.commissionAmount = commissionAmount
        self.sellerAmount = sellerAmount
        self.feeAmount = feeAmount
        self.suspenseAmount = suspenseAmount
        self.fxRate = fxRate
        self.exchangeDifference = exchangeDifference
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.receivableApplied = try container.decode(String.self, forKey: .receivableApplied)
        self.commissionAmount = try container.decode(String.self, forKey: .commissionAmount)
        self.sellerAmount = try container.decode(String.self, forKey: .sellerAmount)
        self.feeAmount = try container.decode(String.self, forKey: .feeAmount)
        self.suspenseAmount = try container.decode(String.self, forKey: .suspenseAmount)
        self.fxRate = try container.decode(String.self, forKey: .fxRate)
        self.exchangeDifference = try container.decode(String.self, forKey: .exchangeDifference)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.receivableApplied, forKey: .receivableApplied)
        try container.encode(self.commissionAmount, forKey: .commissionAmount)
        try container.encode(self.sellerAmount, forKey: .sellerAmount)
        try container.encode(self.feeAmount, forKey: .feeAmount)
        try container.encode(self.suspenseAmount, forKey: .suspenseAmount)
        try container.encode(self.fxRate, forKey: .fxRate)
        try container.encode(self.exchangeDifference, forKey: .exchangeDifference)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case receivableApplied
        case commissionAmount
        case sellerAmount
        case feeAmount
        case suspenseAmount
        case fxRate
        case exchangeDifference
    }
}