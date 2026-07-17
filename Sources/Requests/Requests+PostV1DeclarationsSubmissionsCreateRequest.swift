import Foundation

extension Requests {
    public struct PostV1DeclarationsSubmissionsCreateRequest: Codable, Hashable, Sendable {
        public let obligation: PostV1DeclarationsSubmissionsCreateRequestObligation
        public let year: Int64
        public let month: Int64
        public let dataType: PostV1DeclarationsSubmissionsCreateRequestDataType?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            obligation: PostV1DeclarationsSubmissionsCreateRequestObligation,
            year: Int64,
            month: Int64,
            dataType: PostV1DeclarationsSubmissionsCreateRequestDataType? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.obligation = obligation
            self.year = year
            self.month = month
            self.dataType = dataType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.obligation = try container.decode(PostV1DeclarationsSubmissionsCreateRequestObligation.self, forKey: .obligation)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decode(Int64.self, forKey: .month)
            self.dataType = try container.decodeIfPresent(PostV1DeclarationsSubmissionsCreateRequestDataType.self, forKey: .dataType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.obligation, forKey: .obligation)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.month, forKey: .month)
            try container.encodeIfPresent(self.dataType, forKey: .dataType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case obligation
            case year
            case month
            case dataType
        }
    }
}