import Foundation

public struct BusinessTripsCreateHrResponse: Codable, Hashable, Sendable {
    public let id: String
    public let employeeId: String
    public let destinationCountryCode: String
    public let purpose: String
    public let startDate: CalendarDate
    public let endDate: CalendarDate
    public let days: Int64
    public let dailyRate: String
    public let perDiemAmount: String
    public let status: BusinessTripsCreateHrResponseStatus
    public let payrollRunId: Nullable<String>
    public let createdAt: Date
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        employeeId: String,
        destinationCountryCode: String,
        purpose: String,
        startDate: CalendarDate,
        endDate: CalendarDate,
        days: Int64,
        dailyRate: String,
        perDiemAmount: String,
        status: BusinessTripsCreateHrResponseStatus,
        payrollRunId: Nullable<String>,
        createdAt: Date,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.employeeId = employeeId
        self.destinationCountryCode = destinationCountryCode
        self.purpose = purpose
        self.startDate = startDate
        self.endDate = endDate
        self.days = days
        self.dailyRate = dailyRate
        self.perDiemAmount = perDiemAmount
        self.status = status
        self.payrollRunId = payrollRunId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.destinationCountryCode = try container.decode(String.self, forKey: .destinationCountryCode)
        self.purpose = try container.decode(String.self, forKey: .purpose)
        self.startDate = try container.decode(CalendarDate.self, forKey: .startDate)
        self.endDate = try container.decode(CalendarDate.self, forKey: .endDate)
        self.days = try container.decode(Int64.self, forKey: .days)
        self.dailyRate = try container.decode(String.self, forKey: .dailyRate)
        self.perDiemAmount = try container.decode(String.self, forKey: .perDiemAmount)
        self.status = try container.decode(BusinessTripsCreateHrResponseStatus.self, forKey: .status)
        self.payrollRunId = try container.decode(Nullable<String>.self, forKey: .payrollRunId)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.destinationCountryCode, forKey: .destinationCountryCode)
        try container.encode(self.purpose, forKey: .purpose)
        try container.encode(self.startDate, forKey: .startDate)
        try container.encode(self.endDate, forKey: .endDate)
        try container.encode(self.days, forKey: .days)
        try container.encode(self.dailyRate, forKey: .dailyRate)
        try container.encode(self.perDiemAmount, forKey: .perDiemAmount)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.payrollRunId, forKey: .payrollRunId)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case employeeId
        case destinationCountryCode
        case purpose
        case startDate
        case endDate
        case days
        case dailyRate
        case perDiemAmount
        case status
        case payrollRunId
        case createdAt
        case updatedAt
    }
}