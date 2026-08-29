import Foundation

extension Requests {
    public struct PostV1ProjectsTimeEntriesBillRequest: Codable, Hashable, Sendable {
        public let projectId: String
        public let partnerId: String?
        public let dateFrom: String?
        public let dateTo: String?
        public let itemId: String?
        public let hourlyRate: String?
        public let vatRatePercent: String?
        public let vatClassifierCode: String?
        public let issueDate: String?
        public let dueDate: String?
        public let groupBy: PostV1ProjectsTimeEntriesBillRequestGroupBy?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            projectId: String,
            partnerId: String? = nil,
            dateFrom: String? = nil,
            dateTo: String? = nil,
            itemId: String? = nil,
            hourlyRate: String? = nil,
            vatRatePercent: String? = nil,
            vatClassifierCode: String? = nil,
            issueDate: String? = nil,
            dueDate: String? = nil,
            groupBy: PostV1ProjectsTimeEntriesBillRequestGroupBy? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.projectId = projectId
            self.partnerId = partnerId
            self.dateFrom = dateFrom
            self.dateTo = dateTo
            self.itemId = itemId
            self.hourlyRate = hourlyRate
            self.vatRatePercent = vatRatePercent
            self.vatClassifierCode = vatClassifierCode
            self.issueDate = issueDate
            self.dueDate = dueDate
            self.groupBy = groupBy
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.projectId = try container.decode(String.self, forKey: .projectId)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.dateFrom = try container.decodeIfPresent(String.self, forKey: .dateFrom)
            self.dateTo = try container.decodeIfPresent(String.self, forKey: .dateTo)
            self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
            self.hourlyRate = try container.decodeIfPresent(String.self, forKey: .hourlyRate)
            self.vatRatePercent = try container.decodeIfPresent(String.self, forKey: .vatRatePercent)
            self.vatClassifierCode = try container.decodeIfPresent(String.self, forKey: .vatClassifierCode)
            self.issueDate = try container.decodeIfPresent(String.self, forKey: .issueDate)
            self.dueDate = try container.decodeIfPresent(String.self, forKey: .dueDate)
            self.groupBy = try container.decodeIfPresent(PostV1ProjectsTimeEntriesBillRequestGroupBy.self, forKey: .groupBy)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.projectId, forKey: .projectId)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.dateFrom, forKey: .dateFrom)
            try container.encodeIfPresent(self.dateTo, forKey: .dateTo)
            try container.encodeIfPresent(self.itemId, forKey: .itemId)
            try container.encodeIfPresent(self.hourlyRate, forKey: .hourlyRate)
            try container.encodeIfPresent(self.vatRatePercent, forKey: .vatRatePercent)
            try container.encodeIfPresent(self.vatClassifierCode, forKey: .vatClassifierCode)
            try container.encodeIfPresent(self.issueDate, forKey: .issueDate)
            try container.encodeIfPresent(self.dueDate, forKey: .dueDate)
            try container.encodeIfPresent(self.groupBy, forKey: .groupBy)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case projectId
            case partnerId
            case dateFrom
            case dateTo
            case itemId
            case hourlyRate
            case vatRatePercent
            case vatClassifierCode
            case issueDate
            case dueDate
            case groupBy
            case notes
        }
    }
}