import Foundation

extension Requests {
    public struct UsDeGrossReceiptsGetDeclarationsRequest: Codable, Hashable, Sendable {
        public let period: String
        public let activity: UsDeGrossReceiptsGetDeclarationsRequestActivity
        public let excludedReceipts: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            period: String,
            activity: UsDeGrossReceiptsGetDeclarationsRequestActivity,
            excludedReceipts: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.period = period
            self.activity = activity
            self.excludedReceipts = excludedReceipts
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.period = try container.decode(String.self, forKey: .period)
            self.activity = try container.decode(UsDeGrossReceiptsGetDeclarationsRequestActivity.self, forKey: .activity)
            self.excludedReceipts = try container.decodeIfPresent(String.self, forKey: .excludedReceipts)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.period, forKey: .period)
            try container.encode(self.activity, forKey: .activity)
            try container.encodeIfPresent(self.excludedReceipts, forKey: .excludedReceipts)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case period
            case activity
            case excludedReceipts
        }
    }
}