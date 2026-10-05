import Foundation

extension Requests {
    public struct CostCenterActivityReportsRequest: Codable, Hashable, Sendable {
        public let fromDate: CalendarDate
        public let toDate: CalendarDate
        public let costCenterId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fromDate: CalendarDate,
            toDate: CalendarDate,
            costCenterId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fromDate = fromDate
            self.toDate = toDate
            self.costCenterId = costCenterId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
            self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
            self.costCenterId = try container.decode(String.self, forKey: .costCenterId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encode(self.costCenterId, forKey: .costCenterId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fromDate
            case toDate
            case costCenterId
        }
    }
}