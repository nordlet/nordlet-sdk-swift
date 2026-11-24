import Foundation

extension Requests {
    public struct AgreementsExpectedInvoicesAgreementsRequest: Codable, Hashable, Sendable {
        public let id: String
        public let to: CalendarDate?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            to: CalendarDate? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.to = to
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.to = try container.decodeIfPresent(CalendarDate.self, forKey: .to)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.to, forKey: .to)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case to
        }
    }
}