import Foundation

extension Requests {
    public struct PostV1ProductionOrdersRecordOperationRequest: Codable, Hashable, Sendable {
        public let id: String
        public let actualMinutes: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            actualMinutes: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.actualMinutes = actualMinutes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.actualMinutes = try container.decode(String.self, forKey: .actualMinutes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.actualMinutes, forKey: .actualMinutes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case actualMinutes
        }
    }
}