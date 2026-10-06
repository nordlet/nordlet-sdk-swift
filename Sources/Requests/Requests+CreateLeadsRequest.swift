import Foundation

extension Requests {
    public struct CreateLeadsRequest: Codable, Hashable, Sendable {
        public let name: String
        public let contactName: String?
        public let email: String?
        public let phone: String?
        public let website: String?
        public let countryCode: String?
        public let sourceId: String?
        public let typeId: String?
        public let status: CreateLeadsRequestStatus?
        public let estimatedValue: String?
        public let currency: String?
        public let description: String?
        public let assignedUserId: String?
        public let documents: [CreateLeadsRequestDocumentsItem]?
        public let notes: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String,
            contactName: String? = nil,
            email: String? = nil,
            phone: String? = nil,
            website: String? = nil,
            countryCode: String? = nil,
            sourceId: String? = nil,
            typeId: String? = nil,
            status: CreateLeadsRequestStatus? = nil,
            estimatedValue: String? = nil,
            currency: String? = nil,
            description: String? = nil,
            assignedUserId: String? = nil,
            documents: [CreateLeadsRequestDocumentsItem]? = nil,
            notes: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
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
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decode(String.self, forKey: .name)
            self.contactName = try container.decodeIfPresent(String.self, forKey: .contactName)
            self.email = try container.decodeIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
            self.website = try container.decodeIfPresent(String.self, forKey: .website)
            self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
            self.sourceId = try container.decodeIfPresent(String.self, forKey: .sourceId)
            self.typeId = try container.decodeIfPresent(String.self, forKey: .typeId)
            self.status = try container.decodeIfPresent(CreateLeadsRequestStatus.self, forKey: .status)
            self.estimatedValue = try container.decodeIfPresent(String.self, forKey: .estimatedValue)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.assignedUserId = try container.decodeIfPresent(String.self, forKey: .assignedUserId)
            self.documents = try container.decodeIfPresent([CreateLeadsRequestDocumentsItem].self, forKey: .documents)
            self.notes = try container.decodeIfPresent([String].self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.contactName, forKey: .contactName)
            try container.encodeIfPresent(self.email, forKey: .email)
            try container.encodeIfPresent(self.phone, forKey: .phone)
            try container.encodeIfPresent(self.website, forKey: .website)
            try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
            try container.encodeIfPresent(self.sourceId, forKey: .sourceId)
            try container.encodeIfPresent(self.typeId, forKey: .typeId)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encodeIfPresent(self.estimatedValue, forKey: .estimatedValue)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.assignedUserId, forKey: .assignedUserId)
            try container.encodeIfPresent(self.documents, forKey: .documents)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
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
            case notes
        }
    }
}