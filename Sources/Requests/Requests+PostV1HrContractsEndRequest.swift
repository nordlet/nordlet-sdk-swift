import Foundation

extension Requests {
    public struct PostV1HrContractsEndRequest: Codable, Hashable, Sendable {
        public let id: String
        public let endDate: String
        public let endReason: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            endDate: String,
            endReason: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.endDate = endDate
            self.endReason = endReason
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.endDate = try container.decode(String.self, forKey: .endDate)
            self.endReason = try container.decodeIfPresent(String.self, forKey: .endReason)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.endDate, forKey: .endDate)
            try container.encodeIfPresent(self.endReason, forKey: .endReason)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case endDate
            case endReason
        }
    }
}