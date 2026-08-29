import Foundation

public struct PostV1FleetVehiclesListResponseRowsItemCurrentAssignment: Codable, Hashable, Sendable {
    public let id: String
    public let employeeId: String
    public let employeeName: String
    public let fromDate: String
    public let privateUse: Bool
    public let employerPaysFuel: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        employeeId: String,
        employeeName: String,
        fromDate: String,
        privateUse: Bool,
        employerPaysFuel: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.employeeId = employeeId
        self.employeeName = employeeName
        self.fromDate = fromDate
        self.privateUse = privateUse
        self.employerPaysFuel = employerPaysFuel
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.employeeName = try container.decode(String.self, forKey: .employeeName)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.privateUse = try container.decode(Bool.self, forKey: .privateUse)
        self.employerPaysFuel = try container.decode(Bool.self, forKey: .employerPaysFuel)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.employeeName, forKey: .employeeName)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.privateUse, forKey: .privateUse)
        try container.encode(self.employerPaysFuel, forKey: .employerPaysFuel)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case employeeId
        case employeeName
        case fromDate
        case privateUse
        case employerPaysFuel
    }
}