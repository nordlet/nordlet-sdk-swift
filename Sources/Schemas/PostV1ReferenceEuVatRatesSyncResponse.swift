import Foundation

public struct PostV1ReferenceEuVatRatesSyncResponse: Codable, Hashable, Sendable {
    public let id: String
    public let situationOn: String
    public let status: PostV1ReferenceEuVatRatesSyncResponseStatus
    public let ratesFetched: Int64
    public let ratesInserted: Int64
    public let ratesClosed: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        situationOn: String,
        status: PostV1ReferenceEuVatRatesSyncResponseStatus,
        ratesFetched: Int64,
        ratesInserted: Int64,
        ratesClosed: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.situationOn = situationOn
        self.status = status
        self.ratesFetched = ratesFetched
        self.ratesInserted = ratesInserted
        self.ratesClosed = ratesClosed
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.situationOn = try container.decode(String.self, forKey: .situationOn)
        self.status = try container.decode(PostV1ReferenceEuVatRatesSyncResponseStatus.self, forKey: .status)
        self.ratesFetched = try container.decode(Int64.self, forKey: .ratesFetched)
        self.ratesInserted = try container.decode(Int64.self, forKey: .ratesInserted)
        self.ratesClosed = try container.decode(Int64.self, forKey: .ratesClosed)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.situationOn, forKey: .situationOn)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.ratesFetched, forKey: .ratesFetched)
        try container.encode(self.ratesInserted, forKey: .ratesInserted)
        try container.encode(self.ratesClosed, forKey: .ratesClosed)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case situationOn
        case status
        case ratesFetched
        case ratesInserted
        case ratesClosed
    }
}