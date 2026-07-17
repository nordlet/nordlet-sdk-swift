import Foundation

extension Requests {
    public struct PostV1ReportsGlDetailRequest: Codable, Hashable, Sendable {
        public let accountCode: String
        public let fromDate: String
        public let toDate: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            accountCode: String,
            fromDate: String,
            toDate: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.accountCode = accountCode
            self.fromDate = fromDate
            self.toDate = toDate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.accountCode = try container.decode(String.self, forKey: .accountCode)
            self.fromDate = try container.decode(String.self, forKey: .fromDate)
            self.toDate = try container.decode(String.self, forKey: .toDate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.accountCode, forKey: .accountCode)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case accountCode
            case fromDate
            case toDate
        }
    }
}