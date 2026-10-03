import Foundation

extension Requests {
    public struct PostV1DeclarationsPlJpkKrGenerateRequest: Codable, Hashable, Sendable {
        public let dateFrom: String
        public let dateTo: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            dateFrom: String,
            dateTo: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.dateFrom = dateFrom
            self.dateTo = dateTo
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.dateFrom = try container.decode(String.self, forKey: .dateFrom)
            self.dateTo = try container.decode(String.self, forKey: .dateTo)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.dateFrom, forKey: .dateFrom)
            try container.encode(self.dateTo, forKey: .dateTo)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case dateFrom
            case dateTo
        }
    }
}