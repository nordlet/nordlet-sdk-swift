import Foundation

extension Requests {
    public struct SettlementsCommissionBankRequest: Codable, Hashable, Sendable {
        public let lineId: String
        public let commissionPercent: Nullable<String>?
        public let commissionAmount: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            lineId: String,
            commissionPercent: Nullable<String>? = nil,
            commissionAmount: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.lineId = lineId
            self.commissionPercent = commissionPercent
            self.commissionAmount = commissionAmount
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.lineId = try container.decode(String.self, forKey: .lineId)
            self.commissionPercent = try container.decodeNullableIfPresent(String.self, forKey: .commissionPercent)
            self.commissionAmount = try container.decodeNullableIfPresent(String.self, forKey: .commissionAmount)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.lineId, forKey: .lineId)
            try container.encodeNullableIfPresent(self.commissionPercent, forKey: .commissionPercent)
            try container.encodeNullableIfPresent(self.commissionAmount, forKey: .commissionAmount)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case lineId
            case commissionPercent
            case commissionAmount
        }
    }
}