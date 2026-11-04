import Foundation

extension Requests {
    public struct LtIvazAmendDeclarationsRequest: Codable, Hashable, Sendable {
        public let waybillIds: [String]
        public let persist: Bool?
        public let corrections: [LtIvazAmendDeclarationsRequestCorrectionsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            waybillIds: [String],
            persist: Bool? = nil,
            corrections: [LtIvazAmendDeclarationsRequestCorrectionsItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.waybillIds = waybillIds
            self.persist = persist
            self.corrections = corrections
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.waybillIds = try container.decode([String].self, forKey: .waybillIds)
            self.persist = try container.decodeIfPresent(Bool.self, forKey: .persist)
            self.corrections = try container.decodeIfPresent([LtIvazAmendDeclarationsRequestCorrectionsItem].self, forKey: .corrections)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.waybillIds, forKey: .waybillIds)
            try container.encodeIfPresent(self.persist, forKey: .persist)
            try container.encodeIfPresent(self.corrections, forKey: .corrections)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case waybillIds
            case persist
            case corrections
        }
    }
}