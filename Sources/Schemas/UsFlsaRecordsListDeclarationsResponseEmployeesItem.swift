import Foundation

public struct UsFlsaRecordsListDeclarationsResponseEmployeesItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let code: Nullable<String>
    public let firstName: String
    public let lastName: String
    public let address: UsFlsaRecordsListDeclarationsResponseEmployeesItemAddress
    public let birthDate: Nullable<CalendarDate>
    public let sex: Nullable<UsFlsaRecordsListDeclarationsResponseEmployeesItemSex>
    public let occupation: Nullable<String>
    public let workweekStart: UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweekStart
    public let exempt: Bool
    public let workweeks: [UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweeksItem]
    public let payPeriods: [UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        code: Nullable<String>,
        firstName: String,
        lastName: String,
        address: UsFlsaRecordsListDeclarationsResponseEmployeesItemAddress,
        birthDate: Nullable<CalendarDate>,
        sex: Nullable<UsFlsaRecordsListDeclarationsResponseEmployeesItemSex>,
        occupation: Nullable<String>,
        workweekStart: UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweekStart,
        exempt: Bool,
        workweeks: [UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweeksItem],
        payPeriods: [UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.code = code
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.birthDate = birthDate
        self.sex = sex
        self.occupation = occupation
        self.workweekStart = workweekStart
        self.exempt = exempt
        self.workweeks = workweeks
        self.payPeriods = payPeriods
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.address = try container.decode(UsFlsaRecordsListDeclarationsResponseEmployeesItemAddress.self, forKey: .address)
        self.birthDate = try container.decode(Nullable<CalendarDate>.self, forKey: .birthDate)
        self.sex = try container.decode(Nullable<UsFlsaRecordsListDeclarationsResponseEmployeesItemSex>.self, forKey: .sex)
        self.occupation = try container.decode(Nullable<String>.self, forKey: .occupation)
        self.workweekStart = try container.decode(UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweekStart.self, forKey: .workweekStart)
        self.exempt = try container.decode(Bool.self, forKey: .exempt)
        self.workweeks = try container.decode([UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweeksItem].self, forKey: .workweeks)
        self.payPeriods = try container.decode([UsFlsaRecordsListDeclarationsResponseEmployeesItemPayPeriodsItem].self, forKey: .payPeriods)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.birthDate, forKey: .birthDate)
        try container.encode(self.sex, forKey: .sex)
        try container.encode(self.occupation, forKey: .occupation)
        try container.encode(self.workweekStart, forKey: .workweekStart)
        try container.encode(self.exempt, forKey: .exempt)
        try container.encode(self.workweeks, forKey: .workweeks)
        try container.encode(self.payPeriods, forKey: .payPeriods)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case code
        case firstName
        case lastName
        case address
        case birthDate
        case sex
        case occupation
        case workweekStart
        case exempt
        case workweeks
        case payPeriods
    }
}