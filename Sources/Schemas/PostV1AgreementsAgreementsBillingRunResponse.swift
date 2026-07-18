import Foundation

public struct PostV1AgreementsAgreementsBillingRunResponse: Codable, Hashable, Sendable {
    public let generated: [PostV1AgreementsAgreementsBillingRunResponseGeneratedItem]
    public let expired: [String]
    public let errors: [PostV1AgreementsAgreementsBillingRunResponseErrorsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        generated: [PostV1AgreementsAgreementsBillingRunResponseGeneratedItem],
        expired: [String],
        errors: [PostV1AgreementsAgreementsBillingRunResponseErrorsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.generated = generated
        self.expired = expired
        self.errors = errors
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.generated = try container.decode([PostV1AgreementsAgreementsBillingRunResponseGeneratedItem].self, forKey: .generated)
        self.expired = try container.decode([String].self, forKey: .expired)
        self.errors = try container.decode([PostV1AgreementsAgreementsBillingRunResponseErrorsItem].self, forKey: .errors)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.generated, forKey: .generated)
        try container.encode(self.expired, forKey: .expired)
        try container.encode(self.errors, forKey: .errors)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case generated
        case expired
        case errors
    }
}