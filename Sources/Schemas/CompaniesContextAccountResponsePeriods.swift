import Foundation

public struct CompaniesContextAccountResponsePeriods: Codable, Hashable, Sendable {
    public let open: [CompaniesContextAccountResponsePeriodsOpenItem]
    public let locked: [CompaniesContextAccountResponsePeriodsLockedItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        open: [CompaniesContextAccountResponsePeriodsOpenItem],
        locked: [CompaniesContextAccountResponsePeriodsLockedItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.open = open
        self.locked = locked
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.open = try container.decode([CompaniesContextAccountResponsePeriodsOpenItem].self, forKey: .open)
        self.locked = try container.decode([CompaniesContextAccountResponsePeriodsLockedItem].self, forKey: .locked)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.open, forKey: .open)
        try container.encode(self.locked, forKey: .locked)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case open
        case locked
    }
}