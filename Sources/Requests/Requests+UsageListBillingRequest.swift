import Foundation

extension Requests {
    public struct UsageListBillingRequest: Codable, Hashable, Sendable {
        public let from: CalendarDate
        public let to: CalendarDate
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            from: CalendarDate,
            to: CalendarDate,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.from = from
            self.to = to
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.from = try container.decode(CalendarDate.self, forKey: .from)
            self.to = try container.decode(CalendarDate.self, forKey: .to)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.from, forKey: .from)
            try container.encode(self.to, forKey: .to)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case from
            case to
        }
    }
}