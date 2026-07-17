import Foundation

extension Requests {
    public struct PostV1ConsolidationReportRequest: Codable, Hashable, Sendable {
        public let groupId: String
        public let fromDate: String
        public let toDate: String
        public let category: PostV1ConsolidationReportRequestCategory?
        public let eliminations: [PostV1ConsolidationReportRequestEliminationsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            groupId: String,
            fromDate: String,
            toDate: String,
            category: PostV1ConsolidationReportRequestCategory? = nil,
            eliminations: [PostV1ConsolidationReportRequestEliminationsItem]? = nil,
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
            self.fromDate = try container.decode(String.self, forKey: .fromDate)
            self.toDate = try container.decode(String.self, forKey: .toDate)
            self.category = try container.decodeIfPresent(PostV1ConsolidationReportRequestCategory.self, forKey: .category)
            self.eliminations = try container.decodeIfPresent([PostV1ConsolidationReportRequestEliminationsItem].self, forKey: .eliminations)
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