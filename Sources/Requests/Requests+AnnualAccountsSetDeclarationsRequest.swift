import Foundation

extension Requests {
    public struct AnnualAccountsSetDeclarationsRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let adopted: Bool
        public let adoptionDate: CalendarDate?
        public let dateOfPreparation: CalendarDate
        public let audited: Bool?
        public let auditReportQualified: Bool?
        public let auditorNotElected: Bool?
        public let notesText: String?
        public let managementReportText: String?
        public let auditorReportText: String?
        public let auditorReportDate: CalendarDate?
        public let resultToReserves: String?
        public let resultToLossCompensation: String?
        public let resultToRemainder: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            adopted: Bool,
            adoptionDate: CalendarDate? = nil,
            dateOfPreparation: CalendarDate,
            audited: Bool? = nil,
            auditReportQualified: Bool? = nil,
            auditorNotElected: Bool? = nil,
            notesText: String? = nil,
            managementReportText: String? = nil,
            auditorReportText: String? = nil,
            auditorReportDate: CalendarDate? = nil,
            resultToReserves: String? = nil,
            resultToLossCompensation: String? = nil,
            resultToRemainder: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.adopted = adopted
            self.adoptionDate = adoptionDate
            self.dateOfPreparation = dateOfPreparation
            self.audited = audited
            self.auditReportQualified = auditReportQualified
            self.auditorNotElected = auditorNotElected
            self.notesText = notesText
            self.managementReportText = managementReportText
            self.auditorReportText = auditorReportText
            self.auditorReportDate = auditorReportDate
            self.resultToReserves = resultToReserves
            self.resultToLossCompensation = resultToLossCompensation
            self.resultToRemainder = resultToRemainder
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.adopted = try container.decode(Bool.self, forKey: .adopted)
            self.adoptionDate = try container.decodeIfPresent(CalendarDate.self, forKey: .adoptionDate)
            self.dateOfPreparation = try container.decode(CalendarDate.self, forKey: .dateOfPreparation)
            self.audited = try container.decodeIfPresent(Bool.self, forKey: .audited)
            self.auditReportQualified = try container.decodeIfPresent(Bool.self, forKey: .auditReportQualified)
            self.auditorNotElected = try container.decodeIfPresent(Bool.self, forKey: .auditorNotElected)
            self.notesText = try container.decodeIfPresent(String.self, forKey: .notesText)
            self.managementReportText = try container.decodeIfPresent(String.self, forKey: .managementReportText)
            self.auditorReportText = try container.decodeIfPresent(String.self, forKey: .auditorReportText)
            self.auditorReportDate = try container.decodeIfPresent(CalendarDate.self, forKey: .auditorReportDate)
            self.resultToReserves = try container.decodeIfPresent(String.self, forKey: .resultToReserves)
            self.resultToLossCompensation = try container.decodeIfPresent(String.self, forKey: .resultToLossCompensation)
            self.resultToRemainder = try container.decodeIfPresent(String.self, forKey: .resultToRemainder)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.adopted, forKey: .adopted)
            try container.encodeIfPresent(self.adoptionDate, forKey: .adoptionDate)
            try container.encode(self.dateOfPreparation, forKey: .dateOfPreparation)
            try container.encodeIfPresent(self.audited, forKey: .audited)
            try container.encodeIfPresent(self.auditReportQualified, forKey: .auditReportQualified)
            try container.encodeIfPresent(self.auditorNotElected, forKey: .auditorNotElected)
            try container.encodeIfPresent(self.notesText, forKey: .notesText)
            try container.encodeIfPresent(self.managementReportText, forKey: .managementReportText)
            try container.encodeIfPresent(self.auditorReportText, forKey: .auditorReportText)
            try container.encodeIfPresent(self.auditorReportDate, forKey: .auditorReportDate)
            try container.encodeIfPresent(self.resultToReserves, forKey: .resultToReserves)
            try container.encodeIfPresent(self.resultToLossCompensation, forKey: .resultToLossCompensation)
            try container.encodeIfPresent(self.resultToRemainder, forKey: .resultToRemainder)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case adopted
            case adoptionDate
            case dateOfPreparation
            case audited
            case auditReportQualified
            case auditorNotElected
            case notesText
            case managementReportText
            case auditorReportText
            case auditorReportDate
            case resultToReserves
            case resultToLossCompensation
            case resultToRemainder
        }
    }
}