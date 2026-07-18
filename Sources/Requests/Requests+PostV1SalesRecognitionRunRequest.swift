import Foundation

extension Requests {
    public struct PostV1SalesRecognitionRunRequest: Codable, Hashable, Sendable {
        public let asOfDate: String?
        public let postingDate: String?
        public let scheduleIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            asOfDate: String? = nil,
            postingDate: String? = nil,
            scheduleIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.asOfDate = asOfDate
            self.postingDate = postingDate
            self.scheduleIds = scheduleIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.asOfDate = try container.decodeIfPresent(String.self, forKey: .asOfDate)
            self.postingDate = try container.decodeIfPresent(String.self, forKey: .postingDate)
            self.scheduleIds = try container.decodeIfPresent([String].self, forKey: .scheduleIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.asOfDate, forKey: .asOfDate)
            try container.encodeIfPresent(self.postingDate, forKey: .postingDate)
            try container.encodeIfPresent(self.scheduleIds, forKey: .scheduleIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case asOfDate
            case postingDate
            case scheduleIds
        }
    }
}