import Foundation

extension Requests {
    public struct PostV1PartnersInquiriesCreateRequest: Codable, Hashable, Sendable {
        public let partnerId: String?
        public let contactName: String?
        public let contactEmail: String?
        public let contactPhone: String?
        public let subject: String
        public let body: String?
        public let channel: String?
        public let assignedUserId: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String? = nil,
            contactName: String? = nil,
            contactEmail: String? = nil,
            contactPhone: String? = nil,
            subject: String,
            body: String? = nil,
            channel: String? = nil,
            assignedUserId: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.contactName = contactName
            self.contactEmail = contactEmail
            self.contactPhone = contactPhone
            self.subject = subject
            self.body = body
            self.channel = channel
            self.assignedUserId = assignedUserId
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.contactName = try container.decodeIfPresent(String.self, forKey: .contactName)
            self.contactEmail = try container.decodeIfPresent(String.self, forKey: .contactEmail)
            self.contactPhone = try container.decodeIfPresent(String.self, forKey: .contactPhone)
            self.subject = try container.decode(String.self, forKey: .subject)
            self.body = try container.decodeIfPresent(String.self, forKey: .body)
            self.channel = try container.decodeIfPresent(String.self, forKey: .channel)
            self.assignedUserId = try container.decodeIfPresent(String.self, forKey: .assignedUserId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.contactName, forKey: .contactName)
            try container.encodeIfPresent(self.contactEmail, forKey: .contactEmail)
            try container.encodeIfPresent(self.contactPhone, forKey: .contactPhone)
            try container.encode(self.subject, forKey: .subject)
            try container.encodeIfPresent(self.body, forKey: .body)
            try container.encodeIfPresent(self.channel, forKey: .channel)
            try container.encodeIfPresent(self.assignedUserId, forKey: .assignedUserId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case contactName
            case contactEmail
            case contactPhone
            case subject
            case body
            case channel
            case assignedUserId
            case notes
        }
    }
}