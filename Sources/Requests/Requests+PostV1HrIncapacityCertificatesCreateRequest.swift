import Foundation

extension Requests {
    public struct PostV1HrIncapacityCertificatesCreateRequest: Codable, Hashable, Sendable {
        public let employeeId: String
        public let series: String?
        public let number: String
        public let fromDate: String
        public let toDate: String
        public let reason: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            employeeId: String,
            series: String? = nil,
            number: String,
            fromDate: String,
            toDate: String,
            reason: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.employeeId = employeeId
            self.series = series
            self.number = number
            self.fromDate = fromDate
            self.toDate = toDate
            self.reason = reason
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.employeeId = try container.decode(String.self, forKey: .employeeId)
            self.series = try container.decodeIfPresent(String.self, forKey: .series)
            self.number = try container.decode(String.self, forKey: .number)
            self.fromDate = try container.decode(String.self, forKey: .fromDate)
            self.toDate = try container.decode(String.self, forKey: .toDate)
            self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.employeeId, forKey: .employeeId)
            try container.encodeIfPresent(self.series, forKey: .series)
            try container.encode(self.number, forKey: .number)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.reason, forKey: .reason)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case employeeId
            case series
            case number
            case fromDate
            case toDate
            case reason
            case notes
        }
    }
}