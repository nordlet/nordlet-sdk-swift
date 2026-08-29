import Foundation

extension Requests {
    public struct PostV1InventoryLotsUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let expiryDate: Nullable<String>?
        public let notes: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            expiryDate: Nullable<String>? = nil,
            notes: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.expiryDate = expiryDate
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.expiryDate = try container.decodeNullableIfPresent(String.self, forKey: .expiryDate)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeNullableIfPresent(self.expiryDate, forKey: .expiryDate)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case expiryDate
            case notes
        }
    }
}