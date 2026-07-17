import Foundation

extension Requests {
    public struct PostV1DeclarationsLtFr0600ComputeRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let month: Int64
        public let months: Int64?
        public let deductionPercent: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            month: Int64,
            months: Int64? = nil,
            deductionPercent: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.month = month
            self.months = months
            self.deductionPercent = deductionPercent
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decode(Int64.self, forKey: .month)
            self.months = try container.decodeIfPresent(Int64.self, forKey: .months)
            self.deductionPercent = try container.decodeIfPresent(Int64.self, forKey: .deductionPercent)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.month, forKey: .month)
            try container.encodeIfPresent(self.months, forKey: .months)
            try container.encodeIfPresent(self.deductionPercent, forKey: .deductionPercent)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case month
            case months
            case deductionPercent
        }
    }
}