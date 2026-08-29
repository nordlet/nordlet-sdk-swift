import Foundation

public struct PostV1ProjectsTimeEntriesUpdateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let projectId: String
    public let employeeId: Nullable<String>
    public let date: String
    public let hours: String
    public let description: Nullable<String>
    public let billable: Bool
    public let hourlyRate: Nullable<String>
    public let billedInvoiceId: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        projectId: String,
        employeeId: Nullable<String>,
        date: String,
        hours: String,
        description: Nullable<String>,
        billable: Bool,
        hourlyRate: Nullable<String>,
        billedInvoiceId: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.projectId = projectId
        self.employeeId = employeeId
        self.date = date
        self.hours = hours
        self.description = description
        self.billable = billable
        self.hourlyRate = hourlyRate
        self.billedInvoiceId = billedInvoiceId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.projectId = try container.decode(String.self, forKey: .projectId)
        self.employeeId = try container.decode(Nullable<String>.self, forKey: .employeeId)
        self.date = try container.decode(String.self, forKey: .date)
        self.hours = try container.decode(String.self, forKey: .hours)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.billable = try container.decode(Bool.self, forKey: .billable)
        self.hourlyRate = try container.decode(Nullable<String>.self, forKey: .hourlyRate)
        self.billedInvoiceId = try container.decode(Nullable<String>.self, forKey: .billedInvoiceId)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.projectId, forKey: .projectId)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.hours, forKey: .hours)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.billable, forKey: .billable)
        try container.encode(self.hourlyRate, forKey: .hourlyRate)
        try container.encode(self.billedInvoiceId, forKey: .billedInvoiceId)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case projectId
        case employeeId
        case date
        case hours
        case description
        case billable
        case hourlyRate
        case billedInvoiceId
        case createdAt
        case updatedAt
    }
}