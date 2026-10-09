import Foundation

extension Requests {
    public struct ShiftsOpenPosRequest: Codable, Hashable, Sendable {
        public let deviceId: String
        public let warehouseId: String?
        public let openingCash: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            deviceId: String,
            warehouseId: String? = nil,
            openingCash: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.deviceId = deviceId
            self.warehouseId = warehouseId
            self.openingCash = openingCash
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.deviceId = try container.decode(String.self, forKey: .deviceId)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.openingCash = try container.decodeIfPresent(String.self, forKey: .openingCash)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.deviceId, forKey: .deviceId)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encodeIfPresent(self.openingCash, forKey: .openingCash)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case deviceId
            case warehouseId
            case openingCash
        }
    }
}