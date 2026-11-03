import Foundation

public struct VatClassifiersListReferenceResponseRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let countryCode: String
    public let name: String
    public let nameEn: Nullable<String>
    public let ratePercent: Nullable<String>
    public let side: VatClassifiersListReferenceResponseRowsItemSide
    public let scheme: Nullable<VatClassifiersListReferenceResponseRowsItemScheme>
    public let rateFromLine: VatClassifiersListReferenceResponseRowsItemRateFromLine
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        countryCode: String,
        name: String,
        nameEn: Nullable<String>,
        ratePercent: Nullable<String>,
        side: VatClassifiersListReferenceResponseRowsItemSide,
        scheme: Nullable<VatClassifiersListReferenceResponseRowsItemScheme>,
        rateFromLine: VatClassifiersListReferenceResponseRowsItemRateFromLine,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.countryCode = countryCode
        self.name = name
        self.nameEn = nameEn
        self.ratePercent = ratePercent
        self.side = side
        self.scheme = scheme
        self.rateFromLine = rateFromLine
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.name = try container.decode(String.self, forKey: .name)
        self.nameEn = try container.decode(Nullable<String>.self, forKey: .nameEn)
        self.ratePercent = try container.decode(Nullable<String>.self, forKey: .ratePercent)
        self.side = try container.decode(VatClassifiersListReferenceResponseRowsItemSide.self, forKey: .side)
        self.scheme = try container.decode(Nullable<VatClassifiersListReferenceResponseRowsItemScheme>.self, forKey: .scheme)
        self.rateFromLine = try container.decode(VatClassifiersListReferenceResponseRowsItemRateFromLine.self, forKey: .rateFromLine)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.nameEn, forKey: .nameEn)
        try container.encode(self.ratePercent, forKey: .ratePercent)
        try container.encode(self.side, forKey: .side)
        try container.encode(self.scheme, forKey: .scheme)
        try container.encode(self.rateFromLine, forKey: .rateFromLine)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case countryCode
        case name
        case nameEn
        case ratePercent
        case side
        case scheme
        case rateFromLine
    }
}