import Foundation

extension Requests {
    public struct FeedsSyncBankRequest: Codable, Hashable, Sendable {
        public let connectionId: String
        public let feedAccountId: String?
        public let dateFrom: CalendarDate?
        public let dateTo: CalendarDate?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            connectionId: String,
            feedAccountId: String? = nil,
            dateFrom: CalendarDate? = nil,
            dateTo: CalendarDate? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.connectionId = connectionId
            self.feedAccountId = feedAccountId
            self.dateFrom = dateFrom
            self.dateTo = dateTo
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.connectionId = try container.decode(String.self, forKey: .connectionId)
            self.feedAccountId = try container.decodeIfPresent(String.self, forKey: .feedAccountId)
            self.dateFrom = try container.decodeIfPresent(CalendarDate.self, forKey: .dateFrom)
            self.dateTo = try container.decodeIfPresent(CalendarDate.self, forKey: .dateTo)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.connectionId, forKey: .connectionId)
            try container.encodeIfPresent(self.feedAccountId, forKey: .feedAccountId)
            try container.encodeIfPresent(self.dateFrom, forKey: .dateFrom)
            try container.encodeIfPresent(self.dateTo, forKey: .dateTo)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case connectionId
            case feedAccountId
            case dateFrom
            case dateTo
        }
    }
}