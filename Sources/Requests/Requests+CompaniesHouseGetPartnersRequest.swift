import Foundation

extension Requests {
    public struct CompaniesHouseGetPartnersRequest: Codable, Hashable, Sendable {
        public let companyNumber: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            companyNumber: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.companyNumber = companyNumber
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.companyNumber = try container.decode(String.self, forKey: .companyNumber)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.companyNumber, forKey: .companyNumber)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case companyNumber
        }
    }
}