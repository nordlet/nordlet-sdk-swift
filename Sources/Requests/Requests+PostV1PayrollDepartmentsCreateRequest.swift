import Foundation

extension Requests {
    public struct PostV1PayrollDepartmentsCreateRequest: Codable, Hashable, Sendable {
        public let code: String
        public let name: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String,
            name: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.code = code
            self.name = name
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decode(String.self, forKey: .code)
            self.name = try container.decode(String.self, forKey: .name)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.code, forKey: .code)
            try container.encode(self.name, forKey: .name)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case code
            case name
        }
    }
}