import Foundation

extension Requests {
    public struct PostV1ReportsGeneralJournalRequest: Codable, Hashable, Sendable {
        public let fromDate: String
        public let toDate: String
        public let page: Int64?
        public let pageSize: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fromDate: String,
            toDate: String,
            page: Int64? = nil,
            pageSize: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fromDate = fromDate
            self.toDate = toDate
            self.page = page
            self.pageSize = pageSize
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fromDate = try container.decode(String.self, forKey: .fromDate)
            self.toDate = try container.decode(String.self, forKey: .toDate)
            self.page = try container.decodeIfPresent(Int64.self, forKey: .page)
            self.pageSize = try container.decodeIfPresent(Int64.self, forKey: .pageSize)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.page, forKey: .page)
            try container.encodeIfPresent(self.pageSize, forKey: .pageSize)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fromDate
            case toDate
            case page
            case pageSize
        }
    }
}