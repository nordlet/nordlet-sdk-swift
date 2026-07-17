import Foundation

extension Requests {
    public struct PostV1PartnersInquiriesUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let partnerId: Nullable<String>?
        public let subject: String?
        public let body: String?
        public let channel: String?
        public let status: PostV1PartnersInquiriesUpdateRequestStatus?
        public let assignedUserId: Nullable<String>?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            partnerId: Nullable<String>? = nil,
            subject: String? = nil,
            body: String? = nil,
            channel: String? = nil,
            status: PostV1PartnersInquiriesUpdateRequestStatus? = nil,
            assignedUserId: Nullable<String>? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.partnerId = partnerId
            self.subject = subject
            self.body = body
            self.channel = channel
            self.status = status
            self.assignedUserId = assignedUserId
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.partnerId = try container.decodeNullableIfPresent(String.self, forKey: .partnerId)
            self.subject = try container.decodeIfPresent(String.self, forKey: .subject)
            self.body = try container.decodeIfPresent(String.self, forKey: .body)
            self.channel = try container.decodeIfPresent(String.self, forKey: .channel)
            self.status = try container.decodeIfPresent(PostV1PartnersInquiriesUpdateRequestStatus.self, forKey: .status)
            self.assignedUserId = try container.decodeNullableIfPresent(String.self, forKey: .assignedUserId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeNullableIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.subject, forKey: .subject)
            try container.encodeIfPresent(self.body, forKey: .body)
            try container.encodeIfPresent(self.channel, forKey: .channel)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encodeNullableIfPresent(self.assignedUserId, forKey: .assignedUserId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case partnerId
            case subject
            case body
            case channel
            case status
            case assignedUserId
            case notes
        }
    }
}