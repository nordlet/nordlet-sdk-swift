import Foundation

public struct PostV1SalesInvoicesGetResponseVatEvidenceRateTable: Codable, Hashable, Sendable {
    public let importId: String
    public let situationOn: String
    public let trigger: String
    public let startedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        importId: String,
        situationOn: String,
        trigger: String,
        startedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.importId = importId
        self.situationOn = situationOn
        self.trigger = trigger
        self.startedAt = startedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.importId = try container.decode(String.self, forKey: .importId)
        self.situationOn = try container.decode(String.self, forKey: .situationOn)
        self.trigger = try container.decode(String.self, forKey: .trigger)
        self.startedAt = try container.decode(String.self, forKey: .startedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.importId, forKey: .importId)
        try container.encode(self.situationOn, forKey: .situationOn)
        try container.encode(self.trigger, forKey: .trigger)
        try container.encode(self.startedAt, forKey: .startedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case importId
        case situationOn
        case trigger
        case startedAt
    }
}