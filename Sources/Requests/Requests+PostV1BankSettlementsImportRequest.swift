import Foundation

extension Requests {
    public struct PostV1BankSettlementsImportRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let provider: PostV1BankSettlementsImportRequestProvider?
        public let content: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            provider: PostV1BankSettlementsImportRequestProvider? = nil,
            content: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.provider = provider
            self.content = content
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.provider = try container.decodeIfPresent(PostV1BankSettlementsImportRequestProvider.self, forKey: .provider)
            self.content = try container.decode(String.self, forKey: .content)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encodeIfPresent(self.provider, forKey: .provider)
            try container.encode(self.content, forKey: .content)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case provider
            case content
        }
    }
}