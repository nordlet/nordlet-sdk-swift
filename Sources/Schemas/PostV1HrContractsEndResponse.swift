import Foundation

public struct PostV1HrContractsEndResponse: Codable, Hashable, Sendable {
    public let id: String
    public let employeeId: String
    public let positionId: Nullable<String>
    public let departmentId: Nullable<String>
    public let scheduleId: Nullable<String>
    public let contractNo: String
    public let type: PostV1HrContractsEndResponseType
    public let startDate: String
    public let endDate: Nullable<String>
    public let endReason: Nullable<String>
    public let baseSalary: String
    public let salaryType: PostV1HrContractsEndResponseSalaryType
    public let workHoursPerWeek: String
    public let status: PostV1HrContractsEndResponseStatus
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        employeeId: String,
        positionId: Nullable<String>,
        departmentId: Nullable<String>,
        scheduleId: Nullable<String>,
        contractNo: String,
        type: PostV1HrContractsEndResponseType,
        startDate: String,
        endDate: Nullable<String>,
        endReason: Nullable<String>,
        baseSalary: String,
        salaryType: PostV1HrContractsEndResponseSalaryType,
        workHoursPerWeek: String,
        status: PostV1HrContractsEndResponseStatus,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.employeeId = employeeId
        self.positionId = positionId
        self.departmentId = departmentId
        self.scheduleId = scheduleId
        self.contractNo = contractNo
        self.type = type
        self.startDate = startDate
        self.endDate = endDate
        self.endReason = endReason
        self.baseSalary = baseSalary
        self.salaryType = salaryType
        self.workHoursPerWeek = workHoursPerWeek
        self.status = status
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.positionId = try container.decode(Nullable<String>.self, forKey: .positionId)
        self.departmentId = try container.decode(Nullable<String>.self, forKey: .departmentId)
        self.scheduleId = try container.decode(Nullable<String>.self, forKey: .scheduleId)
        self.contractNo = try container.decode(String.self, forKey: .contractNo)
        self.type = try container.decode(PostV1HrContractsEndResponseType.self, forKey: .type)
        self.startDate = try container.decode(String.self, forKey: .startDate)
        self.endDate = try container.decode(Nullable<String>.self, forKey: .endDate)
        self.endReason = try container.decode(Nullable<String>.self, forKey: .endReason)
        self.baseSalary = try container.decode(String.self, forKey: .baseSalary)
        self.salaryType = try container.decode(PostV1HrContractsEndResponseSalaryType.self, forKey: .salaryType)
        self.workHoursPerWeek = try container.decode(String.self, forKey: .workHoursPerWeek)
        self.status = try container.decode(PostV1HrContractsEndResponseStatus.self, forKey: .status)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.positionId, forKey: .positionId)
        try container.encode(self.departmentId, forKey: .departmentId)
        try container.encode(self.scheduleId, forKey: .scheduleId)
        try container.encode(self.contractNo, forKey: .contractNo)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.startDate, forKey: .startDate)
        try container.encode(self.endDate, forKey: .endDate)
        try container.encode(self.endReason, forKey: .endReason)
        try container.encode(self.baseSalary, forKey: .baseSalary)
        try container.encode(self.salaryType, forKey: .salaryType)
        try container.encode(self.workHoursPerWeek, forKey: .workHoursPerWeek)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case employeeId
        case positionId
        case departmentId
        case scheduleId
        case contractNo
        case type
        case startDate
        case endDate
        case endReason
        case baseSalary
        case salaryType
        case workHoursPerWeek
        case status
        case notes
        case createdAt
    }
}