import Foundation

public struct PostV1SalesInvoicesApplyAdvanceResponseVatEvidencePartner: Codable, Hashable, Sendable {
    public let id: String
    public let vatCode: Nullable<String>
    public let vatValid: Nullable<Bool>
    public let vatValidatedAt: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        vatCode: Nullable<String>,
        vatValid: Nullable<Bool>,
        vatValidatedAt: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.vatCode = vatCode
        self.vatValid = vatValid
        self.vatValidatedAt = vatValidatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.vatCode = try container.decode(Nullable<String>.self, forKey: .vatCode)
        self.vatValid = try container.decode(Nullable<Bool>.self, forKey: .vatValid)
        self.vatValidatedAt = try container.decode(Nullable<String>.self, forKey: .vatValidatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.vatValid, forKey: .vatValid)
        try container.encode(self.vatValidatedAt, forKey: .vatValidatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case vatCode
        case vatValid
        case vatValidatedAt
    }
}