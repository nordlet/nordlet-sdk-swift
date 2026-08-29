import Foundation

public struct PostV1ProductionOrdersGetResponseOperationsItem: Codable, Hashable, Sendable {
    public let id: String
    public let routingOperationId: Nullable<String>
    public let workCenterId: String
    public let sequence: Int64
    public let name: String
    public let plannedMinutes: String
    public let actualMinutes: Nullable<String>
    public let costPerHour: String
    public let cost: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        routingOperationId: Nullable<String>,
        workCenterId: String,
        sequence: Int64,
        name: String,
        plannedMinutes: String,
        actualMinutes: Nullable<String>,
        costPerHour: String,
        cost: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.routingOperationId = routingOperationId
        self.workCenterId = workCenterId
        self.sequence = sequence
        self.name = name
        self.plannedMinutes = plannedMinutes
        self.actualMinutes = actualMinutes
        self.costPerHour = costPerHour
        self.cost = cost
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.routingOperationId = try container.decode(Nullable<String>.self, forKey: .routingOperationId)
        self.workCenterId = try container.decode(String.self, forKey: .workCenterId)
        self.sequence = try container.decode(Int64.self, forKey: .sequence)
        self.name = try container.decode(String.self, forKey: .name)
        self.plannedMinutes = try container.decode(String.self, forKey: .plannedMinutes)
        self.actualMinutes = try container.decode(Nullable<String>.self, forKey: .actualMinutes)
        self.costPerHour = try container.decode(String.self, forKey: .costPerHour)
        self.cost = try container.decode(Nullable<String>.self, forKey: .cost)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.routingOperationId, forKey: .routingOperationId)
        try container.encode(self.workCenterId, forKey: .workCenterId)
        try container.encode(self.sequence, forKey: .sequence)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.plannedMinutes, forKey: .plannedMinutes)
        try container.encode(self.actualMinutes, forKey: .actualMinutes)
        try container.encode(self.costPerHour, forKey: .costPerHour)
        try container.encode(self.cost, forKey: .cost)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case routingOperationId
        case workCenterId
        case sequence
        case name
        case plannedMinutes
        case actualMinutes
        case costPerHour
        case cost
    }
}