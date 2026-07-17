import Foundation

extension Requests {
    public struct PostV1ReportsJobsCreateRequest: Codable, Hashable, Sendable {
        public let reportType: String
        public let params: [String: JSONValue]?
        public let formats: [PostV1ReportsJobsCreateRequestFormatsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            reportType: String,
            params: [String: JSONValue]? = nil,
            formats: [PostV1ReportsJobsCreateRequestFormatsItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.reportType = reportType
            self.params = params
            self.formats = formats
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.reportType = try container.decode(String.self, forKey: .reportType)
            self.params = try container.decodeIfPresent([String: JSONValue].self, forKey: .params)
            self.formats = try container.decodeIfPresent([PostV1ReportsJobsCreateRequestFormatsItem].self, forKey: .formats)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.reportType, forKey: .reportType)
            try container.encodeIfPresent(self.params, forKey: .params)
            try container.encodeIfPresent(self.formats, forKey: .formats)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case reportType
            case params
            case formats
        }
    }
}