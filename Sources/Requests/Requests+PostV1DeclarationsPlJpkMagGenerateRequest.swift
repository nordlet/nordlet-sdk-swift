import Foundation

extension Requests {
    public struct PostV1DeclarationsPlJpkMagGenerateRequest: Codable, Hashable, Sendable {
        public let dateFrom: String
        public let dateTo: String
        public let warehouseId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            dateFrom: String,
            dateTo: String,
            warehouseId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.dateFrom = dateFrom
            self.dateTo = dateTo
            self.warehouseId = warehouseId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.dateFrom = try container.decode(String.self, forKey: .dateFrom)
            self.dateTo = try container.decode(String.self, forKey: .dateTo)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.dateFrom, forKey: .dateFrom)
            try container.encode(self.dateTo, forKey: .dateTo)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case dateFrom
            case dateTo
            case warehouseId
        }
    }
}