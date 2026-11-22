import Foundation

extension Requests {
    public struct GbP11DItemsListDeclarationsRequest: Codable, Hashable, Sendable {
        public let taxYear: Int64
        public let employeeId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taxYear: Int64,
            employeeId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taxYear = taxYear
            self.employeeId = employeeId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taxYear = try container.decode(Int64.self, forKey: .taxYear)
            self.employeeId = try container.decodeIfPresent(String.self, forKey: .employeeId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taxYear, forKey: .taxYear)
            try container.encodeIfPresent(self.employeeId, forKey: .employeeId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taxYear
            case employeeId
        }
    }
}