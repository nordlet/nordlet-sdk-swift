import Foundation

extension Requests {
    public struct PostV1AgreementsAgreementsCreateRequest: Codable, Hashable, Sendable {
        public let typeId: String?
        public let partnerId: String
        public let number: String
        public let name: String?
        public let startDate: String
        public let endDate: String?
        public let autoRenew: Bool?
        public let value: String?
        public let currency: String?
        public let status: PostV1AgreementsAgreementsCreateRequestStatus?
        public let notes: String?
        public let items: [PostV1AgreementsAgreementsCreateRequestItemsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            typeId: String? = nil,
            partnerId: String,
            number: String,
            name: String? = nil,
            startDate: String,
            endDate: String? = nil,
            autoRenew: Bool? = nil,
            value: String? = nil,
            currency: String? = nil,
            status: PostV1AgreementsAgreementsCreateRequestStatus? = nil,
            notes: String? = nil,
            items: [PostV1AgreementsAgreementsCreateRequestItemsItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.typeId = typeId
            self.partnerId = partnerId
            self.number = number
            self.name = name
            self.startDate = startDate
            self.endDate = endDate
            self.autoRenew = autoRenew
            self.value = value
            self.currency = currency
            self.status = status
            self.notes = notes
            self.items = items
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.typeId = try container.decodeIfPresent(String.self, forKey: .typeId)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.number = try container.decode(String.self, forKey: .number)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.startDate = try container.decode(String.self, forKey: .startDate)
            self.endDate = try container.decodeIfPresent(String.self, forKey: .endDate)
            self.autoRenew = try container.decodeIfPresent(Bool.self, forKey: .autoRenew)
            self.value = try container.decodeIfPresent(String.self, forKey: .value)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.status = try container.decodeIfPresent(PostV1AgreementsAgreementsCreateRequestStatus.self, forKey: .status)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.items = try container.decodeIfPresent([PostV1AgreementsAgreementsCreateRequestItemsItem].self, forKey: .items)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.typeId, forKey: .typeId)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encode(self.number, forKey: .number)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encode(self.startDate, forKey: .startDate)
            try container.encodeIfPresent(self.endDate, forKey: .endDate)
            try container.encodeIfPresent(self.autoRenew, forKey: .autoRenew)
            try container.encodeIfPresent(self.value, forKey: .value)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.items, forKey: .items)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case typeId
            case partnerId
            case number
            case name
            case startDate
            case endDate
            case autoRenew
            case value
            case currency
            case status
            case notes
            case items
        }
    }
}