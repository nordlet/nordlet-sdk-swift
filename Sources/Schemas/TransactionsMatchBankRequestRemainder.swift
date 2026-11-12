import Foundation

public struct TransactionsMatchBankRequestRemainder: Codable, Hashable, Sendable {
    public let treatment: TransactionsMatchBankRequestRemainderTreatment
    public let accountCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        treatment: TransactionsMatchBankRequestRemainderTreatment,
        accountCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.treatment = treatment
        self.accountCode = accountCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.treatment = try container.decode(TransactionsMatchBankRequestRemainderTreatment.self, forKey: .treatment)
        self.accountCode = try container.decodeIfPresent(String.self, forKey: .accountCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.treatment, forKey: .treatment)
        try container.encodeIfPresent(self.accountCode, forKey: .accountCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case treatment
        case accountCode
    }
}