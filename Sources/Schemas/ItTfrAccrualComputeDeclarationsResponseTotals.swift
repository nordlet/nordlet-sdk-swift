import Foundation

public struct ItTfrAccrualComputeDeclarationsResponseTotals: Codable, Hashable, Sendable {
    public let kept: String
    public let paidOut: String
    public let accrual: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        kept: String,
        paidOut: String,
        accrual: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.kept = kept
        self.paidOut = paidOut
        self.accrual = accrual
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.kept = try container.decode(String.self, forKey: .kept)
        self.paidOut = try container.decode(String.self, forKey: .paidOut)
        self.accrual = try container.decode(String.self, forKey: .accrual)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.kept, forKey: .kept)
        try container.encode(self.paidOut, forKey: .paidOut)
        try container.encode(self.accrual, forKey: .accrual)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case kept
        case paidOut
        case accrual
    }
}