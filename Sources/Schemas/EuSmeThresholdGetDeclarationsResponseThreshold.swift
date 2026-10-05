import Foundation

public struct EuSmeThresholdGetDeclarationsResponseThreshold: Codable, Hashable, Sendable {
    public let currency: String
    public let nationalThreshold: Nullable<String>
    public let sectors: [EuSmeThresholdGetDeclarationsResponseThresholdSectorsItem]?
    public let note: String?
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currency: String,
        nationalThreshold: Nullable<String>,
        sectors: [EuSmeThresholdGetDeclarationsResponseThresholdSectorsItem]? = nil,
        note: String? = nil,
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currency = currency
        self.nationalThreshold = nationalThreshold
        self.sectors = sectors
        self.note = note
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.nationalThreshold = try container.decode(Nullable<String>.self, forKey: .nationalThreshold)
        self.sectors = try container.decodeIfPresent([EuSmeThresholdGetDeclarationsResponseThresholdSectorsItem].self, forKey: .sectors)
        self.note = try container.decodeIfPresent(String.self, forKey: .note)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.nationalThreshold, forKey: .nationalThreshold)
        try container.encodeIfPresent(self.sectors, forKey: .sectors)
        try container.encodeIfPresent(self.note, forKey: .note)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currency
        case nationalThreshold
        case sectors
        case note
        case source
    }
}