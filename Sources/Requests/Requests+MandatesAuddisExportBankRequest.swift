import Foundation

extension Requests {
    public struct MandatesAuddisExportBankRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let mandateIds: [String]?
        public let processingDate: CalendarDate?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            mandateIds: [String]? = nil,
            processingDate: CalendarDate? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.mandateIds = mandateIds
            self.processingDate = processingDate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.mandateIds = try container.decodeIfPresent([String].self, forKey: .mandateIds)
            self.processingDate = try container.decodeIfPresent(CalendarDate.self, forKey: .processingDate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encodeIfPresent(self.mandateIds, forKey: .mandateIds)
            try container.encodeIfPresent(self.processingDate, forKey: .processingDate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case mandateIds
            case processingDate
        }
    }
}