import Foundation

extension Requests {
    public struct PostV1BankMandatesUpdateRequest: Codable, Hashable, Sendable {
        public let bic: String?
        public let debtorName: String?
        public let notes: String?
        public let id: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bic: String? = nil,
            debtorName: String? = nil,
            notes: String? = nil,
            id: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bic = bic
            self.debtorName = debtorName
            self.notes = notes
            self.id = id
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bic = try container.decodeIfPresent(String.self, forKey: .bic)
            self.debtorName = try container.decodeIfPresent(String.self, forKey: .debtorName)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.id = try container.decode(String.self, forKey: .id)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.bic, forKey: .bic)
            try container.encodeIfPresent(self.debtorName, forKey: .debtorName)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.id, forKey: .id)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bic
            case debtorName
            case notes
            case id
        }
    }
}