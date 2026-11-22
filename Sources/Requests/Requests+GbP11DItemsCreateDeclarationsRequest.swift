import Foundation

extension Requests {
    public struct GbP11DItemsCreateDeclarationsRequest: Codable, Hashable, Sendable {
        public let employeeId: String
        public let taxYear: Int64
        public let item: GbP11DItemsCreateDeclarationsRequestItem
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            employeeId: String,
            taxYear: Int64,
            item: GbP11DItemsCreateDeclarationsRequestItem,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.employeeId = employeeId
            self.taxYear = taxYear
            self.item = item
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.employeeId = try container.decode(String.self, forKey: .employeeId)
            self.taxYear = try container.decode(Int64.self, forKey: .taxYear)
            self.item = try container.decode(GbP11DItemsCreateDeclarationsRequestItem.self, forKey: .item)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.employeeId, forKey: .employeeId)
            try container.encode(self.taxYear, forKey: .taxYear)
            try container.encode(self.item, forKey: .item)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case employeeId
            case taxYear
            case item
        }
    }
}