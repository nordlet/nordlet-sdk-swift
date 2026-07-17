import Foundation

public struct PostV1ReportsDebtAgingResponseRowsItem: Codable, Hashable, Sendable {
    public let partnerId: String
    public let partnerName: String
    public let current: String
    public let d1To30: String
    public let d31To60: String
    public let d61To90: String
    public let over90: String
    public let total: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        partnerId: String,
        partnerName: String,
        current: String,
        d1To30: String,
        d31To60: String,
        d61To90: String,
        over90: String,
        total: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.current = current
        self.d1To30 = d1To30
        self.d31To60 = d31To60
        self.d61To90 = d61To90
        self.over90 = over90
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.current = try container.decode(String.self, forKey: .current)
        self.d1To30 = try container.decode(String.self, forKey: .d1To30)
        self.d31To60 = try container.decode(String.self, forKey: .d31To60)
        self.d61To90 = try container.decode(String.self, forKey: .d61To90)
        self.over90 = try container.decode(String.self, forKey: .over90)
        self.total = try container.decode(String.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.current, forKey: .current)
        try container.encode(self.d1To30, forKey: .d1To30)
        try container.encode(self.d31To60, forKey: .d31To60)
        try container.encode(self.d61To90, forKey: .d61To90)
        try container.encode(self.over90, forKey: .over90)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case partnerId
        case partnerName
        case current
        case d1To30 = "d1to30"
        case d31To60 = "d31to60"
        case d61To90 = "d61to90"
        case over90
        case total
    }
}