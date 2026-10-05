import Foundation

extension Requests {
    public struct DebtAgingReportsRequest: Codable, Hashable, Sendable {
        public let side: DebtAgingReportsRequestSide?
        public let asOf: CalendarDate?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            side: DebtAgingReportsRequestSide? = nil,
            asOf: CalendarDate? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.side = side
            self.asOf = asOf
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.side = try container.decodeIfPresent(DebtAgingReportsRequestSide.self, forKey: .side)
            self.asOf = try container.decodeIfPresent(CalendarDate.self, forKey: .asOf)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.side, forKey: .side)
            try container.encodeIfPresent(self.asOf, forKey: .asOf)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case side
            case asOf
        }
    }
}