import Foundation

extension Requests {
    public struct PostV1AccountCompaniesActivateRequest: Codable, Hashable, Sendable {
        public let companyId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            companyId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.companyId = companyId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.companyId = try container.decode(String.self, forKey: .companyId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.companyId, forKey: .companyId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case companyId
        }
    }
}