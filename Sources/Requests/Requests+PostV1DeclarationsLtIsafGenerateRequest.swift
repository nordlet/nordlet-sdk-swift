import Foundation

extension Requests {
    public struct PostV1DeclarationsLtIsafGenerateRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let month: Int64
        public let dataType: PostV1DeclarationsLtIsafGenerateRequestDataType?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            month: Int64,
            dataType: PostV1DeclarationsLtIsafGenerateRequestDataType? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.month = month
            self.dataType = dataType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decode(Int64.self, forKey: .month)
            self.dataType = try container.decodeIfPresent(PostV1DeclarationsLtIsafGenerateRequestDataType.self, forKey: .dataType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.month, forKey: .month)
            try container.encodeIfPresent(self.dataType, forKey: .dataType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case month
            case dataType
        }
    }
}