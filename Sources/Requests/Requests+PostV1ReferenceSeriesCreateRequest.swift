import Foundation

extension Requests {
    public struct PostV1ReferenceSeriesCreateRequest: Codable, Hashable, Sendable {
        public let documentType: String
        public let prefix: String?
        public let year: Int64
        public let startAt: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            documentType: String,
            prefix: String? = nil,
            year: Int64,
            startAt: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.documentType = documentType
            self.prefix = prefix
            self.year = year
            self.startAt = startAt
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.documentType = try container.decode(String.self, forKey: .documentType)
            self.prefix = try container.decodeIfPresent(String.self, forKey: .prefix)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.startAt = try container.decodeIfPresent(Int64.self, forKey: .startAt)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.documentType, forKey: .documentType)
            try container.encodeIfPresent(self.prefix, forKey: .prefix)
            try container.encode(self.year, forKey: .year)
            try container.encodeIfPresent(self.startAt, forKey: .startAt)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case documentType
            case prefix
            case year
            case startAt
        }
    }
}