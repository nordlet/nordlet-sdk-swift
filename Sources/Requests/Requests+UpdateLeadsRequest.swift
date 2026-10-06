import Foundation

extension Requests {
    public struct UpdateLeadsRequest: Codable, Hashable, Sendable {
        public let id: String
        public let name: String?
        public let contactName: Nullable<String>?
        public let email: Nullable<String>?
        public let phone: Nullable<String>?
        public let website: Nullable<String>?
        public let countryCode: Nullable<String>?
        public let sourceId: Nullable<String>?
        public let typeId: Nullable<String>?
        public let status: UpdateLeadsRequestStatus?
        public let estimatedValue: Nullable<String>?
        public let currency: String?
        public let description: Nullable<String>?
        public let assignedUserId: Nullable<String>?
        public let documents: [UpdateLeadsRequestDocumentsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            name: String? = nil,
            contactName: Nullable<String>? = nil,
            email: Nullable<String>? = nil,
            phone: Nullable<String>? = nil,
            website: Nullable<String>? = nil,
            countryCode: Nullable<String>? = nil,
            sourceId: Nullable<String>? = nil,
            typeId: Nullable<String>? = nil,
            status: UpdateLeadsRequestStatus? = nil,
            estimatedValue: Nullable<String>? = nil,
            currency: String? = nil,
            description: Nullable<String>? = nil,
            assignedUserId: Nullable<String>? = nil,
            documents: [UpdateLeadsRequestDocumentsItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.name = name
            self.contactName = contactName
            self.email = email
            self.phone = phone
            self.website = website
            self.countryCode = countryCode
            self.sourceId = sourceId
            self.typeId = typeId
            self.status = status
            self.estimatedValue = estimatedValue
            self.currency = currency
            self.description = description
            self.assignedUserId = assignedUserId
            self.documents = documents
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.contactName = try container.decodeNullableIfPresent(String.self, forKey: .contactName)
            self.email = try container.decodeNullableIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeNullableIfPresent(String.self, forKey: .phone)
            self.website = try container.decodeNullableIfPresent(String.self, forKey: .website)
            self.countryCode = try container.decodeNullableIfPresent(String.self, forKey: .countryCode)
            self.sourceId = try container.decodeNullableIfPresent(String.self, forKey: .sourceId)
            self.typeId = try container.decodeNullableIfPresent(String.self, forKey: .typeId)
            self.status = try container.decodeIfPresent(UpdateLeadsRequestStatus.self, forKey: .status)
            self.estimatedValue = try container.decodeNullableIfPresent(String.self, forKey: .estimatedValue)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.description = try container.decodeNullableIfPresent(String.self, forKey: .description)
            self.assignedUserId = try container.decodeNullableIfPresent(String.self, forKey: .assignedUserId)
            self.documents = try container.decodeIfPresent([UpdateLeadsRequestDocumentsItem].self, forKey: .documents)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.contactName, forKey: .contactName)
            try container.encodeNullableIfPresent(self.email, forKey: .email)
            try container.encodeNullableIfPresent(self.phone, forKey: .phone)
            try container.encodeNullableIfPresent(self.website, forKey: .website)
            try container.encodeNullableIfPresent(self.countryCode, forKey: .countryCode)
            try container.encodeNullableIfPresent(self.sourceId, forKey: .sourceId)
            try container.encodeNullableIfPresent(self.typeId, forKey: .typeId)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encodeNullableIfPresent(self.estimatedValue, forKey: .estimatedValue)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeNullableIfPresent(self.description, forKey: .description)
            try container.encodeNullableIfPresent(self.assignedUserId, forKey: .assignedUserId)
            try container.encodeIfPresent(self.documents, forKey: .documents)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case name
            case contactName
            case email
            case phone
            case website
            case countryCode
            case sourceId
            case typeId
            case status
            case estimatedValue
            case currency
            case description
            case assignedUserId
            case documents
        }
    }
}