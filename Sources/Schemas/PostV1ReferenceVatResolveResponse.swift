import Foundation

public struct PostV1ReferenceVatResolveResponse: Codable, Hashable, Sendable {
    public let scheme: PostV1ReferenceVatResolveResponseScheme
    public let vatCountryCode: Nullable<String>
    public let reverseCharge: Bool
    public let deemedSupplier: Bool
    public let zeroRated: Bool
    public let rates: [PostV1ReferenceVatResolveResponseRatesItem]
    public let legalBasis: String
    public let notes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        scheme: PostV1ReferenceVatResolveResponseScheme,
        vatCountryCode: Nullable<String>,
        reverseCharge: Bool,
        deemedSupplier: Bool,
        zeroRated: Bool,
        rates: [PostV1ReferenceVatResolveResponseRatesItem],
        legalBasis: String,
        notes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.scheme = scheme
        self.vatCountryCode = vatCountryCode
        self.reverseCharge = reverseCharge
        self.deemedSupplier = deemedSupplier
        self.zeroRated = zeroRated
        self.rates = rates
        self.legalBasis = legalBasis
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.scheme = try container.decode(PostV1ReferenceVatResolveResponseScheme.self, forKey: .scheme)
        self.vatCountryCode = try container.decode(Nullable<String>.self, forKey: .vatCountryCode)
        self.reverseCharge = try container.decode(Bool.self, forKey: .reverseCharge)
        self.deemedSupplier = try container.decode(Bool.self, forKey: .deemedSupplier)
        self.zeroRated = try container.decode(Bool.self, forKey: .zeroRated)
        self.rates = try container.decode([PostV1ReferenceVatResolveResponseRatesItem].self, forKey: .rates)
        self.legalBasis = try container.decode(String.self, forKey: .legalBasis)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.scheme, forKey: .scheme)
        try container.encode(self.vatCountryCode, forKey: .vatCountryCode)
        try container.encode(self.reverseCharge, forKey: .reverseCharge)
        try container.encode(self.deemedSupplier, forKey: .deemedSupplier)
        try container.encode(self.zeroRated, forKey: .zeroRated)
        try container.encode(self.rates, forKey: .rates)
        try container.encode(self.legalBasis, forKey: .legalBasis)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case scheme
        case vatCountryCode
        case reverseCharge
        case deemedSupplier
        case zeroRated
        case rates
        case legalBasis
        case notes
    }
}