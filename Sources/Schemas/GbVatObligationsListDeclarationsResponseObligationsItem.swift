import Foundation

public struct GbVatObligationsListDeclarationsResponseObligationsItem: Codable, Hashable, Sendable {
    public let periodKey: String
    public let start: String
    public let end: String
    public let due: String
    public let status: GbVatObligationsListDeclarationsResponseObligationsItemStatus
    public let received: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        periodKey: String,
        start: String,
        end: String,
        due: String,
        status: GbVatObligationsListDeclarationsResponseObligationsItemStatus,
        received: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.periodKey = periodKey
        self.start = start
        self.end = end
        self.due = due
        self.status = status
        self.received = received
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.periodKey = try container.decode(String.self, forKey: .periodKey)
        self.start = try container.decode(String.self, forKey: .start)
        self.end = try container.decode(String.self, forKey: .end)
        self.due = try container.decode(String.self, forKey: .due)
        self.status = try container.decode(GbVatObligationsListDeclarationsResponseObligationsItemStatus.self, forKey: .status)
        self.received = try container.decodeIfPresent(String.self, forKey: .received)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.periodKey, forKey: .periodKey)
        try container.encode(self.start, forKey: .start)
        try container.encode(self.end, forKey: .end)
        try container.encode(self.due, forKey: .due)
        try container.encode(self.status, forKey: .status)
        try container.encodeIfPresent(self.received, forKey: .received)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case periodKey
        case start
        case end
        case due
        case status
        case received
    }
}