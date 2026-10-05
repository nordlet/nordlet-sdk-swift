import Foundation

extension Requests {
    public struct RoEtransportSubmitDeclarationsRequest: Codable, Hashable, Sendable {
        public let waybillId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            waybillId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.waybillId = waybillId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.waybillId = try container.decode(String.self, forKey: .waybillId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.waybillId, forKey: .waybillId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case waybillId
        }
    }
}