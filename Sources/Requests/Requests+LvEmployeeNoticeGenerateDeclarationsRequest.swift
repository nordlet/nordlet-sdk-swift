import Foundation

extension Requests {
    public struct LvEmployeeNoticeGenerateDeclarationsRequest: Codable, Hashable, Sendable {
        public let contractId: String
        public let event: LvEmployeeNoticeGenerateDeclarationsRequestEvent
        public let endCode: LvEmployeeNoticeGenerateDeclarationsRequestEndCode?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contractId: String,
            event: LvEmployeeNoticeGenerateDeclarationsRequestEvent,
            endCode: LvEmployeeNoticeGenerateDeclarationsRequestEndCode? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contractId = contractId
            self.event = event
            self.endCode = endCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contractId = try container.decode(String.self, forKey: .contractId)
            self.event = try container.decode(LvEmployeeNoticeGenerateDeclarationsRequestEvent.self, forKey: .event)
            self.endCode = try container.decodeIfPresent(LvEmployeeNoticeGenerateDeclarationsRequestEndCode.self, forKey: .endCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.contractId, forKey: .contractId)
            try container.encode(self.event, forKey: .event)
            try container.encodeIfPresent(self.endCode, forKey: .endCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contractId
            case event
            case endCode
        }
    }
}