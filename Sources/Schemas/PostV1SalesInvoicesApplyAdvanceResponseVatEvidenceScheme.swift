import Foundation

public struct PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceScheme: Codable, Hashable, Sendable {
    public let vatScheme: Nullable<String>
    public let vatCountryCode: Nullable<String>
    public let deemedSupplier: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        vatScheme: Nullable<String>,
        vatCountryCode: Nullable<String>,
        deemedSupplier: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.vatScheme = vatScheme
        self.vatCountryCode = vatCountryCode
        self.deemedSupplier = deemedSupplier
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.vatScheme = try container.decode(Nullable<String>.self, forKey: .vatScheme)
        self.vatCountryCode = try container.decode(Nullable<String>.self, forKey: .vatCountryCode)
        self.deemedSupplier = try container.decode(Bool.self, forKey: .deemedSupplier)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.vatScheme, forKey: .vatScheme)
        try container.encode(self.vatCountryCode, forKey: .vatCountryCode)
        try container.encode(self.deemedSupplier, forKey: .deemedSupplier)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case vatScheme
        case vatCountryCode
        case deemedSupplier
    }
}