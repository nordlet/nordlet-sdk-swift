import Foundation

extension Requests {
    public struct UsDeUnemploymentGetDeclarationsRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let quarter: Int64
        public let approvedCredit: String?
        public let interest: String?
        public let penalty: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            quarter: Int64,
            approvedCredit: String? = nil,
            interest: String? = nil,
            penalty: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.quarter = quarter
            self.approvedCredit = approvedCredit
            self.interest = interest
            self.penalty = penalty
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.quarter = try container.decode(Int64.self, forKey: .quarter)
            self.approvedCredit = try container.decodeIfPresent(String.self, forKey: .approvedCredit)
            self.interest = try container.decodeIfPresent(String.self, forKey: .interest)
            self.penalty = try container.decodeIfPresent(String.self, forKey: .penalty)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.quarter, forKey: .quarter)
            try container.encodeIfPresent(self.approvedCredit, forKey: .approvedCredit)
            try container.encodeIfPresent(self.interest, forKey: .interest)
            try container.encodeIfPresent(self.penalty, forKey: .penalty)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case quarter
            case approvedCredit
            case interest
            case penalty
        }
    }
}