import Foundation

extension Requests {
    public struct PlKsefReceivedListDeclarationsRequest: Codable, Hashable, Sendable {
        public let from: Date
        public let to: Date
        public let pageSize: Int64?
        public let pageOffset: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            from: Date,
            to: Date,
            pageSize: Int64? = nil,
            pageOffset: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.from = from
            self.to = to
            self.pageSize = pageSize
            self.pageOffset = pageOffset
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.from = try container.decode(Date.self, forKey: .from)
            self.to = try container.decode(Date.self, forKey: .to)
            self.pageSize = try container.decodeIfPresent(Int64.self, forKey: .pageSize)
            self.pageOffset = try container.decodeIfPresent(Int64.self, forKey: .pageOffset)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.from, forKey: .from)
            try container.encode(self.to, forKey: .to)
            try container.encodeIfPresent(self.pageSize, forKey: .pageSize)
            try container.encodeIfPresent(self.pageOffset, forKey: .pageOffset)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case from
            case to
            case pageSize
            case pageOffset
        }
    }
}