import Foundation

public struct PostV1ProjectsTimeEntriesBillResponse: Codable, Hashable, Sendable {
    public let invoiceId: String
    public let entryCount: Int64
    public let hours: String
    public let netTotal: String
    public let vatTotal: String
    public let grossTotal: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceId: String,
        entryCount: Int64,
        hours: String,
        netTotal: String,
        vatTotal: String,
        grossTotal: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceId = invoiceId
        self.entryCount = entryCount
        self.hours = hours
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.grossTotal = grossTotal
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.entryCount = try container.decode(Int64.self, forKey: .entryCount)
        self.hours = try container.decode(String.self, forKey: .hours)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.entryCount, forKey: .entryCount)
        try container.encode(self.hours, forKey: .hours)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.grossTotal, forKey: .grossTotal)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceId
        case entryCount
        case hours
        case netTotal
        case vatTotal
        case grossTotal
    }
}