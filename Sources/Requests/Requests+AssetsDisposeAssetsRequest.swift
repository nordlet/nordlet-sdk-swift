import Foundation

extension Requests {
    public struct AssetsDisposeAssetsRequest: Codable, Hashable, Sendable {
        public let id: String
        public let date: CalendarDate
        public let reason: AssetsDisposeAssetsRequestReason
        /// Sale price excluding VAT; 0 when scrapped or written off
        public let proceeds: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            date: CalendarDate,
            reason: AssetsDisposeAssetsRequestReason,
            proceeds: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.date = date
            self.reason = reason
            self.proceeds = proceeds
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.date = try container.decode(CalendarDate.self, forKey: .date)
            self.reason = try container.decode(AssetsDisposeAssetsRequestReason.self, forKey: .reason)
            self.proceeds = try container.decodeIfPresent(String.self, forKey: .proceeds)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.reason, forKey: .reason)
            try container.encodeIfPresent(self.proceeds, forKey: .proceeds)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case date
            case reason
            case proceeds
            case notes
        }
    }
}