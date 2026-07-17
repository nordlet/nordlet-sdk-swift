import Foundation

extension Requests {
    public struct PostV1PartnersContactsUpdateRequest: Codable, Hashable, Sendable {
        public let name: String?
        public let role: String?
        public let email: String?
        public let phone: String?
        public let notes: String?
        public let id: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            role: String? = nil,
            email: String? = nil,
            phone: String? = nil,
            notes: String? = nil,
            id: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.role = role
            self.email = email
            self.phone = phone
            self.notes = notes
            self.id = id
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.role = try container.decodeIfPresent(String.self, forKey: .role)
            self.email = try container.decodeIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.id = try container.decode(String.self, forKey: .id)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.role, forKey: .role)
            try container.encodeIfPresent(self.email, forKey: .email)
            try container.encodeIfPresent(self.phone, forKey: .phone)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.id, forKey: .id)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case role
            case email
            case phone
            case notes
            case id
        }
    }
}