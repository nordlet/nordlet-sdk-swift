import Foundation

extension Requests {
    public struct PostV1ProductionOrdersCompleteRequest: Codable, Hashable, Sendable {
        public let id: String
        public let componentsAccountCode: String?
        public let finishedAccountCode: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            componentsAccountCode: String? = nil,
            finishedAccountCode: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.componentsAccountCode = componentsAccountCode
            self.finishedAccountCode = finishedAccountCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.componentsAccountCode = try container.decodeIfPresent(String.self, forKey: .componentsAccountCode)
            self.finishedAccountCode = try container.decodeIfPresent(String.self, forKey: .finishedAccountCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.componentsAccountCode, forKey: .componentsAccountCode)
            try container.encodeIfPresent(self.finishedAccountCode, forKey: .finishedAccountCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case componentsAccountCode
            case finishedAccountCode
        }
    }
}