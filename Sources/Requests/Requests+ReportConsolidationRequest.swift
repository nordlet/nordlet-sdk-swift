import Foundation

extension Requests {
    public struct ReportConsolidationRequest: Codable, Hashable, Sendable {
        public let groupId: String
        public let fromDate: CalendarDate
        public let toDate: CalendarDate
        public let category: ReportConsolidationRequestCategory?
        public let eliminations: [ReportConsolidationRequestEliminationsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            groupId: String,
            fromDate: CalendarDate,
            toDate: CalendarDate,
            category: ReportConsolidationRequestCategory? = nil,
            eliminations: [ReportConsolidationRequestEliminationsItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.groupId = groupId
            self.fromDate = fromDate
            self.toDate = toDate
            self.category = category
            self.eliminations = eliminations
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.groupId = try container.decode(String.self, forKey: .groupId)
            self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
            self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
            self.category = try container.decodeIfPresent(ReportConsolidationRequestCategory.self, forKey: .category)
            self.eliminations = try container.decodeIfPresent([ReportConsolidationRequestEliminationsItem].self, forKey: .eliminations)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.groupId, forKey: .groupId)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.category, forKey: .category)
            try container.encodeIfPresent(self.eliminations, forKey: .eliminations)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case groupId
            case fromDate
            case toDate
            case category
            case eliminations
        }
    }
}