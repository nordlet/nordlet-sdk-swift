import Foundation

extension Requests {
    public struct PostV1ProjectsReportRequest: Codable, Hashable, Sendable {
        public let projectId: String?
        public let dateFrom: String?
        public let dateTo: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            projectId: String? = nil,
            dateFrom: String? = nil,
            dateTo: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.projectId = projectId
            self.dateFrom = dateFrom
            self.dateTo = dateTo
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.projectId = try container.decodeIfPresent(String.self, forKey: .projectId)
            self.dateFrom = try container.decodeIfPresent(String.self, forKey: .dateFrom)
            self.dateTo = try container.decodeIfPresent(String.self, forKey: .dateTo)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.projectId, forKey: .projectId)
            try container.encodeIfPresent(self.dateFrom, forKey: .dateFrom)
            try container.encodeIfPresent(self.dateTo, forKey: .dateTo)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case projectId
            case dateFrom
            case dateTo
        }
    }
}