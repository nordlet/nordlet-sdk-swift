import Foundation

public struct PostV1ProductionOrdersCreateResponseQualityChecksItem: Codable, Hashable, Sendable {
    public let id: String
    public let orderId: String
    public let routingOperationId: Nullable<String>
    public let name: String
    public let result: PostV1ProductionOrdersCreateResponseQualityChecksItemResult
    public let notes: Nullable<String>
    public let checkedAt: Nullable<String>
    public let checkedBy: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        orderId: String,
        routingOperationId: Nullable<String>,
        name: String,
        result: PostV1ProductionOrdersCreateResponseQualityChecksItemResult,
        notes: Nullable<String>,
        checkedAt: Nullable<String>,
        checkedBy: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.orderId = orderId
        self.routingOperationId = routingOperationId
        self.name = name
        self.result = result
        self.notes = notes
        self.checkedAt = checkedAt
        self.checkedBy = checkedBy
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.routingOperationId = try container.decode(Nullable<String>.self, forKey: .routingOperationId)
        self.name = try container.decode(String.self, forKey: .name)
        self.result = try container.decode(PostV1ProductionOrdersCreateResponseQualityChecksItemResult.self, forKey: .result)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.checkedAt = try container.decode(Nullable<String>.self, forKey: .checkedAt)
        self.checkedBy = try container.decode(Nullable<String>.self, forKey: .checkedBy)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.routingOperationId, forKey: .routingOperationId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.result, forKey: .result)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.checkedAt, forKey: .checkedAt)
        try container.encode(self.checkedBy, forKey: .checkedBy)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case orderId
        case routingOperationId
        case name
        case result
        case notes
        case checkedAt
        case checkedBy
        case createdAt
    }
}