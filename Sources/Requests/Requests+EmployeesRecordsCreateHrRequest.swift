import Foundation

extension Requests {
    public struct EmployeesRecordsCreateHrRequest: Codable, Hashable, Sendable {
        public let employeeId: String
        public let type: EmployeesRecordsCreateHrRequestType
        public let title: String
        public let institution: String?
        public let issuedAt: CalendarDate?
        public let validUntil: CalendarDate?
        public let fileId: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            employeeId: String,
            type: EmployeesRecordsCreateHrRequestType,
            title: String,
            institution: String? = nil,
            issuedAt: CalendarDate? = nil,
            validUntil: CalendarDate? = nil,
            fileId: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.employeeId = employeeId
            self.type = type
            self.title = title
            self.institution = institution
            self.issuedAt = issuedAt
            self.validUntil = validUntil
            self.fileId = fileId
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.employeeId = try container.decode(String.self, forKey: .employeeId)
            self.type = try container.decode(EmployeesRecordsCreateHrRequestType.self, forKey: .type)
            self.title = try container.decode(String.self, forKey: .title)
            self.institution = try container.decodeIfPresent(String.self, forKey: .institution)
            self.issuedAt = try container.decodeIfPresent(CalendarDate.self, forKey: .issuedAt)
            self.validUntil = try container.decodeIfPresent(CalendarDate.self, forKey: .validUntil)
            self.fileId = try container.decodeIfPresent(String.self, forKey: .fileId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.employeeId, forKey: .employeeId)
            try container.encode(self.type, forKey: .type)
            try container.encode(self.title, forKey: .title)
            try container.encodeIfPresent(self.institution, forKey: .institution)
            try container.encodeIfPresent(self.issuedAt, forKey: .issuedAt)
            try container.encodeIfPresent(self.validUntil, forKey: .validUntil)
            try container.encodeIfPresent(self.fileId, forKey: .fileId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case employeeId
            case type
            case title
            case institution
            case issuedAt
            case validUntil
            case fileId
            case notes
        }
    }
}