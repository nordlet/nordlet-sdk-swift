import Foundation

extension Requests {
    public struct PostV1HrContractsCreateRequest: Codable, Hashable, Sendable {
        public let employeeId: String
        public let positionId: String?
        public let departmentId: String?
        public let scheduleId: String?
        public let contractNo: String
        public let type: PostV1HrContractsCreateRequestType?
        public let startDate: String
        public let endDate: String?
        public let baseSalary: String
        public let salaryType: PostV1HrContractsCreateRequestSalaryType?
        public let workHoursPerWeek: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            employeeId: String,
            positionId: String? = nil,
            departmentId: String? = nil,
            scheduleId: String? = nil,
            contractNo: String,
            type: PostV1HrContractsCreateRequestType? = nil,
            startDate: String,
            endDate: String? = nil,
            baseSalary: String,
            salaryType: PostV1HrContractsCreateRequestSalaryType? = nil,
            workHoursPerWeek: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.employeeId = employeeId
            self.positionId = positionId
            self.departmentId = departmentId
            self.scheduleId = scheduleId
            self.contractNo = contractNo
            self.type = type
            self.startDate = startDate
            self.endDate = endDate
            self.baseSalary = baseSalary
            self.salaryType = salaryType
            self.workHoursPerWeek = workHoursPerWeek
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.employeeId = try container.decode(String.self, forKey: .employeeId)
            self.positionId = try container.decodeIfPresent(String.self, forKey: .positionId)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.scheduleId = try container.decodeIfPresent(String.self, forKey: .scheduleId)
            self.contractNo = try container.decode(String.self, forKey: .contractNo)
            self.type = try container.decodeIfPresent(PostV1HrContractsCreateRequestType.self, forKey: .type)
            self.startDate = try container.decode(String.self, forKey: .startDate)
            self.endDate = try container.decodeIfPresent(String.self, forKey: .endDate)
            self.baseSalary = try container.decode(String.self, forKey: .baseSalary)
            self.salaryType = try container.decodeIfPresent(PostV1HrContractsCreateRequestSalaryType.self, forKey: .salaryType)
            self.workHoursPerWeek = try container.decodeIfPresent(String.self, forKey: .workHoursPerWeek)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.employeeId, forKey: .employeeId)
            try container.encodeIfPresent(self.positionId, forKey: .positionId)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.scheduleId, forKey: .scheduleId)
            try container.encode(self.contractNo, forKey: .contractNo)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encode(self.startDate, forKey: .startDate)
            try container.encodeIfPresent(self.endDate, forKey: .endDate)
            try container.encode(self.baseSalary, forKey: .baseSalary)
            try container.encodeIfPresent(self.salaryType, forKey: .salaryType)
            try container.encodeIfPresent(self.workHoursPerWeek, forKey: .workHoursPerWeek)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case employeeId
            case positionId
            case departmentId
            case scheduleId
            case contractNo
            case type
            case startDate
            case endDate
            case baseSalary
            case salaryType
            case workHoursPerWeek
            case notes
        }
    }
}