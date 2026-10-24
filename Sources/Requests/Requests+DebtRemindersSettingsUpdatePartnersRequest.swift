import Foundation

extension Requests {
    public struct DebtRemindersSettingsUpdatePartnersRequest: Codable, Hashable, Sendable {
        public let daysBefore: Nullable<Int64>?
        public let repeatDays: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            daysBefore: Nullable<Int64>? = nil,
            repeatDays: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.daysBefore = daysBefore
            self.repeatDays = repeatDays
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.daysBefore = try container.decodeNullableIfPresent(Int64.self, forKey: .daysBefore)
            self.repeatDays = try container.decodeIfPresent(Int64.self, forKey: .repeatDays)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.daysBefore, forKey: .daysBefore)
            try container.encodeIfPresent(self.repeatDays, forKey: .repeatDays)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case daysBefore
            case repeatDays
        }
    }
}