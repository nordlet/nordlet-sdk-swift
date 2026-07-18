import Foundation

public struct PostV1AgreementsAgreementsBillingRunResponseErrorsItem: Codable, Hashable, Sendable {
    public let agreementId: String
    public let message: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        agreementId: String,
        message: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.agreementId = agreementId
        self.message = message
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.agreementId = try container.decode(String.self, forKey: .agreementId)
        self.message = try container.decode(String.self, forKey: .message)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.agreementId, forKey: .agreementId)
        try container.encode(self.message, forKey: .message)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case agreementId
        case message
    }
}