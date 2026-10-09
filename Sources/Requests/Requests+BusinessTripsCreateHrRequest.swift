import Foundation

extension Requests {
    public struct BusinessTripsCreateHrRequest: Codable, Hashable, Sendable {
        public let employeeId: String
        public let destinationCountryCode: String
        public let purpose: String
        public let startDate: CalendarDate
        public let endDate: CalendarDate
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            employeeId: String,
            destinationCountryCode: String,
            purpose: String,
            startDate: CalendarDate,
            endDate: CalendarDate,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.employeeId = employeeId
            self.destinationCountryCode = destinationCountryCode
            self.purpose = purpose
            self.startDate = startDate
            self.endDate = endDate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.employeeId = try container.decode(String.self, forKey: .employeeId)
            self.destinationCountryCode = try container.decode(String.self, forKey: .destinationCountryCode)
            self.purpose = try container.decode(String.self, forKey: .purpose)
            self.startDate = try container.decode(CalendarDate.self, forKey: .startDate)
            self.endDate = try container.decode(CalendarDate.self, forKey: .endDate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.employeeId, forKey: .employeeId)
            try container.encode(self.destinationCountryCode, forKey: .destinationCountryCode)
            try container.encode(self.purpose, forKey: .purpose)
            try container.encode(self.startDate, forKey: .startDate)
            try container.encode(self.endDate, forKey: .endDate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case employeeId
            case destinationCountryCode
            case purpose
            case startDate
            case endDate
        }
    }
}