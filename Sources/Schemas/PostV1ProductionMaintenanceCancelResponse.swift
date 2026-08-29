import Foundation

public struct PostV1ProductionMaintenanceCancelResponse: Codable, Hashable, Sendable {
    public let id: String
    public let workCenterId: String
    public let type: PostV1ProductionMaintenanceCancelResponseType
    public let status: PostV1ProductionMaintenanceCancelResponseStatus
    public let plannedDate: String
    public let completedDate: Nullable<String>
    public let description: Nullable<String>
    public let downtimeHours: Nullable<String>
    public let cost: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        workCenterId: String,
        type: PostV1ProductionMaintenanceCancelResponseType,
        status: PostV1ProductionMaintenanceCancelResponseStatus,
        plannedDate: String,
        completedDate: Nullable<String>,
        description: Nullable<String>,
        downtimeHours: Nullable<String>,
        cost: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.workCenterId = workCenterId
        self.type = type
        self.status = status
        self.plannedDate = plannedDate
        self.completedDate = completedDate
        self.description = description
        self.downtimeHours = downtimeHours
        self.cost = cost
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.workCenterId = try container.decode(String.self, forKey: .workCenterId)
        self.type = try container.decode(PostV1ProductionMaintenanceCancelResponseType.self, forKey: .type)
        self.status = try container.decode(PostV1ProductionMaintenanceCancelResponseStatus.self, forKey: .status)
        self.plannedDate = try container.decode(String.self, forKey: .plannedDate)
        self.completedDate = try container.decode(Nullable<String>.self, forKey: .completedDate)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.downtimeHours = try container.decode(Nullable<String>.self, forKey: .downtimeHours)
        self.cost = try container.decode(Nullable<String>.self, forKey: .cost)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.workCenterId, forKey: .workCenterId)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.plannedDate, forKey: .plannedDate)
        try container.encode(self.completedDate, forKey: .completedDate)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.downtimeHours, forKey: .downtimeHours)
        try container.encode(self.cost, forKey: .cost)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case workCenterId
        case type
        case status
        case plannedDate
        case completedDate
        case description
        case downtimeHours
        case cost
        case notes
        case createdAt
    }
}