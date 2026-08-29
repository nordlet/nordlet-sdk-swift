import Foundation

public struct PostV1FleetAssignmentsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let vehicleId: String
    public let plateNumber: String
    public let employeeId: String
    public let employeeName: String
    public let fromDate: String
    public let toDate: Nullable<String>
    public let privateUse: Bool
    public let employerPaysFuel: Bool
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        vehicleId: String,
        plateNumber: String,
        employeeId: String,
        employeeName: String,
        fromDate: String,
        toDate: Nullable<String>,
        privateUse: Bool,
        employerPaysFuel: Bool,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.vehicleId = vehicleId
        self.plateNumber = plateNumber
        self.employeeId = employeeId
        self.employeeName = employeeName
        self.fromDate = fromDate
        self.toDate = toDate
        self.privateUse = privateUse
        self.employerPaysFuel = employerPaysFuel
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.vehicleId = try container.decode(String.self, forKey: .vehicleId)
        self.plateNumber = try container.decode(String.self, forKey: .plateNumber)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.employeeName = try container.decode(String.self, forKey: .employeeName)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(Nullable<String>.self, forKey: .toDate)
        self.privateUse = try container.decode(Bool.self, forKey: .privateUse)
        self.employerPaysFuel = try container.decode(Bool.self, forKey: .employerPaysFuel)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.vehicleId, forKey: .vehicleId)
        try container.encode(self.plateNumber, forKey: .plateNumber)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.employeeName, forKey: .employeeName)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.privateUse, forKey: .privateUse)
        try container.encode(self.employerPaysFuel, forKey: .employerPaysFuel)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case vehicleId
        case plateNumber
        case employeeId
        case employeeName
        case fromDate
        case toDate
        case privateUse
        case employerPaysFuel
        case notes
        case createdAt
    }
}