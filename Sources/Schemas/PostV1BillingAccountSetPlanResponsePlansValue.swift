import Foundation

public struct PostV1BillingAccountSetPlanResponsePlansValue: Codable, Hashable, Sendable {
    public let monthlyFeeEur: String
    public let includedRequests: Int64
    public let requestOverageEur: String
    public let includedDatabaseBytes: Double
    public let includedFileBytes: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        monthlyFeeEur: String,
        includedRequests: Int64,
        requestOverageEur: String,
        includedDatabaseBytes: Double,
        includedFileBytes: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.monthlyFeeEur = monthlyFeeEur
        self.includedRequests = includedRequests
        self.requestOverageEur = requestOverageEur
        self.includedDatabaseBytes = includedDatabaseBytes
        self.includedFileBytes = includedFileBytes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.monthlyFeeEur = try container.decode(String.self, forKey: .monthlyFeeEur)
        self.includedRequests = try container.decode(Int64.self, forKey: .includedRequests)
        self.requestOverageEur = try container.decode(String.self, forKey: .requestOverageEur)
        self.includedDatabaseBytes = try container.decode(Double.self, forKey: .includedDatabaseBytes)
        self.includedFileBytes = try container.decode(Double.self, forKey: .includedFileBytes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.monthlyFeeEur, forKey: .monthlyFeeEur)
        try container.encode(self.includedRequests, forKey: .includedRequests)
        try container.encode(self.requestOverageEur, forKey: .requestOverageEur)
        try container.encode(self.includedDatabaseBytes, forKey: .includedDatabaseBytes)
        try container.encode(self.includedFileBytes, forKey: .includedFileBytes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case monthlyFeeEur
        case includedRequests
        case requestOverageEur
        case includedDatabaseBytes
        case includedFileBytes
    }
}