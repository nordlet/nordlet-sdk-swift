import Foundation

extension Requests {
    public struct DeferralsPostPurchasesRequest: Codable, Hashable, Sendable {
        public let asOfDate: CalendarDate?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            asOfDate: CalendarDate? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.asOfDate = asOfDate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.asOfDate = try container.decodeIfPresent(CalendarDate.self, forKey: .asOfDate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.asOfDate, forKey: .asOfDate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case asOfDate
        }
    }
}