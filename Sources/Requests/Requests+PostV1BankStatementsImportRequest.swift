import Foundation

extension Requests {
    public struct PostV1BankStatementsImportRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let format: PostV1BankStatementsImportRequestFormat?
        public let content: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            format: PostV1BankStatementsImportRequestFormat? = nil,
            content: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.format = format
            self.content = content
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.format = try container.decodeIfPresent(PostV1BankStatementsImportRequestFormat.self, forKey: .format)
            self.content = try container.decode(String.self, forKey: .content)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encodeIfPresent(self.format, forKey: .format)
            try container.encode(self.content, forKey: .content)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case format
            case content
        }
    }
}