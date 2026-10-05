import Foundation

extension Requests {
    public struct EmployeesRecordsUpdateHrRequest: Codable, Hashable, Sendable {
        public let id: String
        public let type: EmployeesRecordsUpdateHrRequestType?
        public let title: String?
        public let institution: String?
        public let issuedAt: Nullable<CalendarDate>?
        public let validUntil: Nullable<CalendarDate>?
        public let fileId: Nullable<String>?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            type: EmployeesRecordsUpdateHrRequestType? = nil,
            title: String? = nil,
            institution: String? = nil,
            issuedAt: Nullable<CalendarDate>? = nil,
            validUntil: Nullable<CalendarDate>? = nil,
            fileId: Nullable<String>? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
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
            self.id = try container.decode(String.self, forKey: .id)
            self.type = try container.decodeIfPresent(EmployeesRecordsUpdateHrRequestType.self, forKey: .type)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.institution = try container.decodeIfPresent(String.self, forKey: .institution)
            self.issuedAt = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .issuedAt)
            self.validUntil = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .validUntil)
            self.fileId = try container.decodeNullableIfPresent(String.self, forKey: .fileId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.title, forKey: .title)
            try container.encodeIfPresent(self.institution, forKey: .institution)
            try container.encodeNullableIfPresent(self.issuedAt, forKey: .issuedAt)
            try container.encodeNullableIfPresent(self.validUntil, forKey: .validUntil)
            try container.encodeNullableIfPresent(self.fileId, forKey: .fileId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
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