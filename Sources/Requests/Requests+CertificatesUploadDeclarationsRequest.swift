import Foundation

extension Requests {
    public struct CertificatesUploadDeclarationsRequest: Codable, Hashable, Sendable {
        public let system: String
        public let fileName: String
        /// Base64-encoded PEM or PKCS#12 file
        public let content: String
        public let passphrase: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            system: String,
            fileName: String,
            content: String,
            passphrase: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.system = system
            self.fileName = fileName
            self.content = content
            self.passphrase = passphrase
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.system = try container.decode(String.self, forKey: .system)
            self.fileName = try container.decode(String.self, forKey: .fileName)
            self.content = try container.decode(String.self, forKey: .content)
            self.passphrase = try container.decodeIfPresent(String.self, forKey: .passphrase)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.system, forKey: .system)
            try container.encode(self.fileName, forKey: .fileName)
            try container.encode(self.content, forKey: .content)
            try container.encodeIfPresent(self.passphrase, forKey: .passphrase)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case system
            case fileName
            case content
            case passphrase
        }
    }
}