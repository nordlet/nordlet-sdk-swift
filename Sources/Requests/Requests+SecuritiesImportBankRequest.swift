import Foundation

extension Requests {
    public struct SecuritiesImportBankRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let content: String
        public let fileName: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            content: String,
            fileName: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.content = content
            self.fileName = fileName
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.content = try container.decode(String.self, forKey: .content)
            self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encode(self.content, forKey: .content)
            try container.encodeIfPresent(self.fileName, forKey: .fileName)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case content
            case fileName
        }
    }
}