import Foundation

public struct PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItem: Codable, Hashable, Sendable {
    public let countryCode: String
    public let currency: String
    public let nationalThreshold: Nullable<String>
    public let sectors: [PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem]?
    public let intraEuAcquisitionsTrigger: PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemIntraEuAcquisitionsTrigger?
    public let note: String?
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        currency: String,
        nationalThreshold: Nullable<String>,
        sectors: [PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem]? = nil,
        intraEuAcquisitionsTrigger: PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemIntraEuAcquisitionsTrigger? = nil,
        note: String? = nil,
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.currency = currency
        self.nationalThreshold = nationalThreshold
        self.sectors = sectors
        self.intraEuAcquisitionsTrigger = intraEuAcquisitionsTrigger
        self.note = note
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.nationalThreshold = try container.decode(Nullable<String>.self, forKey: .nationalThreshold)
        self.sectors = try container.decodeIfPresent([PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem].self, forKey: .sectors)
        self.intraEuAcquisitionsTrigger = try container.decodeIfPresent(PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemIntraEuAcquisitionsTrigger.self, forKey: .intraEuAcquisitionsTrigger)
        self.note = try container.decodeIfPresent(String.self, forKey: .note)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.nationalThreshold, forKey: .nationalThreshold)
        try container.encodeIfPresent(self.sectors, forKey: .sectors)
        try container.encodeIfPresent(self.intraEuAcquisitionsTrigger, forKey: .intraEuAcquisitionsTrigger)
        try container.encodeIfPresent(self.note, forKey: .note)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case currency
        case nationalThreshold
        case sectors
        case intraEuAcquisitionsTrigger
        case note
        case source
    }
}