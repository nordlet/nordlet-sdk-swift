import Foundation

public struct PostV1ProductionWorkCentersListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let code: String
    public let name: String
    public let costPerHour: String
    public let costAccountCode: Nullable<String>
    public let maintenanceIntervalDays: Nullable<Int64>
    public let nextMaintenanceDate: Nullable<String>
    public let isActive: Bool
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        code: String,
        name: String,
        costPerHour: String,
        costAccountCode: Nullable<String>,
        maintenanceIntervalDays: Nullable<Int64>,
        nextMaintenanceDate: Nullable<String>,
        isActive: Bool,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.code = code
        self.name = name
        self.costPerHour = costPerHour
        self.costAccountCode = costAccountCode
        self.maintenanceIntervalDays = maintenanceIntervalDays
        self.nextMaintenanceDate = nextMaintenanceDate
        self.isActive = isActive
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.costPerHour = try container.decode(String.self, forKey: .costPerHour)
        self.costAccountCode = try container.decode(Nullable<String>.self, forKey: .costAccountCode)
        self.maintenanceIntervalDays = try container.decode(Nullable<Int64>.self, forKey: .maintenanceIntervalDays)
        self.nextMaintenanceDate = try container.decode(Nullable<String>.self, forKey: .nextMaintenanceDate)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.costPerHour, forKey: .costPerHour)
        try container.encode(self.costAccountCode, forKey: .costAccountCode)
        try container.encode(self.maintenanceIntervalDays, forKey: .maintenanceIntervalDays)
        try container.encode(self.nextMaintenanceDate, forKey: .nextMaintenanceDate)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case code
        case name
        case costPerHour
        case costAccountCode
        case maintenanceIntervalDays
        case nextMaintenanceDate
        case isActive
        case notes
        case createdAt
    }
}