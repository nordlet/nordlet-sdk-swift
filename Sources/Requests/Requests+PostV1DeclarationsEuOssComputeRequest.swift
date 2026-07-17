import Foundation

extension Requests {
    public struct PostV1DeclarationsEuOssComputeRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let quarter: Int64
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            quarter: Int64,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.quarter = quarter
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.quarter = try container.decode(Int64.self, forKey: .quarter)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.quarter, forKey: .quarter)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case quarter
        }
    }
}