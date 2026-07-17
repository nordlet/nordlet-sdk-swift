import Foundation

extension Requests {
    public struct PostV1BankSettlementsPostRequest: Codable, Hashable, Sendable {
        public let id: String
        public let date: String?
        public let commissionPercent: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            date: String? = nil,
            commissionPercent: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.date = date
            self.commissionPercent = commissionPercent
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.date = try container.decodeIfPresent(String.self, forKey: .date)
            self.commissionPercent = try container.decodeIfPresent(String.self, forKey: .commissionPercent)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.date, forKey: .date)
            try container.encodeIfPresent(self.commissionPercent, forKey: .commissionPercent)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case date
            case commissionPercent
        }
    }
}