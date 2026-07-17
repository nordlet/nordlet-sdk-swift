import Foundation

extension Requests {
    public struct PostV1DeclarationsLtIvazGenerateRequest: Codable, Hashable, Sendable {
        public let waybillIds: [String]
        public let persist: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            waybillIds: [String],
            persist: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.waybillIds = waybillIds
            self.persist = persist
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.waybillIds = try container.decode([String].self, forKey: .waybillIds)
            self.persist = try container.decodeIfPresent(Bool.self, forKey: .persist)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.waybillIds, forKey: .waybillIds)
            try container.encodeIfPresent(self.persist, forKey: .persist)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case waybillIds
            case persist
        }
    }
}