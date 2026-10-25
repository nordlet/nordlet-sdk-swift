import Foundation

extension Requests {
    public struct ExportsMonthSalesRequest: Codable, Hashable, Sendable {
        public let month: String
        public let format: ExportsMonthSalesRequestFormat
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            month: String,
            format: ExportsMonthSalesRequestFormat,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.month = month
            self.format = format
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.month = try container.decode(String.self, forKey: .month)
            self.format = try container.decode(ExportsMonthSalesRequestFormat.self, forKey: .format)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.month, forKey: .month)
            try container.encode(self.format, forKey: .format)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case month
            case format
        }
    }
}