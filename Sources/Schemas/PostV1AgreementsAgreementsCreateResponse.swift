import Foundation

public struct PostV1AgreementsAgreementsCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let typeId: Nullable<String>
    public let partnerId: String
    public let number: String
    public let name: Nullable<String>
    public let startDate: String
    public let endDate: Nullable<String>
    public let autoRenew: Bool
    public let value: Nullable<String>
    public let currency: String
    public let status: PostV1AgreementsAgreementsCreateResponseStatus
    public let notes: Nullable<String>
    public let createdAt: String
    public let items: [PostV1AgreementsAgreementsCreateResponseItemsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        typeId: Nullable<String>,
        partnerId: String,
        number: String,
        name: Nullable<String>,
        startDate: String,
        endDate: Nullable<String>,
        autoRenew: Bool,
        value: Nullable<String>,
        currency: String,
        status: PostV1AgreementsAgreementsCreateResponseStatus,
        notes: Nullable<String>,
        createdAt: String,
        items: [PostV1AgreementsAgreementsCreateResponseItemsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
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
        self.createdAt = createdAt
        self.items = items
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.typeId = try container.decode(Nullable<String>.self, forKey: .typeId)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.number = try container.decode(String.self, forKey: .number)
        self.name = try container.decode(Nullable<String>.self, forKey: .name)
        self.startDate = try container.decode(String.self, forKey: .startDate)
        self.endDate = try container.decode(Nullable<String>.self, forKey: .endDate)
        self.autoRenew = try container.decode(Bool.self, forKey: .autoRenew)
        self.value = try container.decode(Nullable<String>.self, forKey: .value)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.status = try container.decode(PostV1AgreementsAgreementsCreateResponseStatus.self, forKey: .status)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.items = try container.decode([PostV1AgreementsAgreementsCreateResponseItemsItem].self, forKey: .items)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.typeId, forKey: .typeId)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.startDate, forKey: .startDate)
        try container.encode(self.endDate, forKey: .endDate)
        try container.encode(self.autoRenew, forKey: .autoRenew)
        try container.encode(self.value, forKey: .value)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.items, forKey: .items)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
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
        case createdAt
        case items
    }
}