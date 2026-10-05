import Foundation

public struct AgreementsGetAgreementsResponse: Codable, Hashable, Sendable {
    public let id: String
    public let typeId: Nullable<String>
    public let kind: AgreementsGetAgreementsResponseKind
    public let partnerId: Nullable<String>
    public let employeeId: Nullable<String>
    public let bankAccountId: Nullable<String>
    public let number: String
    public let name: Nullable<String>
    public let startDate: CalendarDate
    public let endDate: Nullable<CalendarDate>
    public let autoRenew: Bool
    public let value: Nullable<String>
    public let billingPeriod: Nullable<AgreementsGetAgreementsResponseBillingPeriod>
    public let currency: String
    public let status: AgreementsGetAgreementsResponseStatus
    public let notes: Nullable<String>
    public let documentRef: Nullable<String>
    public let createdAt: Date
    public let items: [AgreementsGetAgreementsResponseItemsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        typeId: Nullable<String>,
        kind: AgreementsGetAgreementsResponseKind,
        partnerId: Nullable<String>,
        employeeId: Nullable<String>,
        bankAccountId: Nullable<String>,
        number: String,
        name: Nullable<String>,
        startDate: CalendarDate,
        endDate: Nullable<CalendarDate>,
        autoRenew: Bool,
        value: Nullable<String>,
        billingPeriod: Nullable<AgreementsGetAgreementsResponseBillingPeriod>,
        currency: String,
        status: AgreementsGetAgreementsResponseStatus,
        notes: Nullable<String>,
        documentRef: Nullable<String>,
        createdAt: Date,
        items: [AgreementsGetAgreementsResponseItemsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.typeId = typeId
        self.kind = kind
        self.partnerId = partnerId
        self.employeeId = employeeId
        self.bankAccountId = bankAccountId
        self.number = number
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
        self.autoRenew = autoRenew
        self.value = value
        self.billingPeriod = billingPeriod
        self.currency = currency
        self.status = status
        self.notes = notes
        self.documentRef = documentRef
        self.createdAt = createdAt
        self.items = items
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.typeId = try container.decode(Nullable<String>.self, forKey: .typeId)
        self.kind = try container.decode(AgreementsGetAgreementsResponseKind.self, forKey: .kind)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.employeeId = try container.decode(Nullable<String>.self, forKey: .employeeId)
        self.bankAccountId = try container.decode(Nullable<String>.self, forKey: .bankAccountId)
        self.number = try container.decode(String.self, forKey: .number)
        self.name = try container.decode(Nullable<String>.self, forKey: .name)
        self.startDate = try container.decode(CalendarDate.self, forKey: .startDate)
        self.endDate = try container.decode(Nullable<CalendarDate>.self, forKey: .endDate)
        self.autoRenew = try container.decode(Bool.self, forKey: .autoRenew)
        self.value = try container.decode(Nullable<String>.self, forKey: .value)
        self.billingPeriod = try container.decode(Nullable<AgreementsGetAgreementsResponseBillingPeriod>.self, forKey: .billingPeriod)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.status = try container.decode(AgreementsGetAgreementsResponseStatus.self, forKey: .status)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.documentRef = try container.decode(Nullable<String>.self, forKey: .documentRef)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.items = try container.decode([AgreementsGetAgreementsResponseItemsItem].self, forKey: .items)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.typeId, forKey: .typeId)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.bankAccountId, forKey: .bankAccountId)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.startDate, forKey: .startDate)
        try container.encode(self.endDate, forKey: .endDate)
        try container.encode(self.autoRenew, forKey: .autoRenew)
        try container.encode(self.value, forKey: .value)
        try container.encode(self.billingPeriod, forKey: .billingPeriod)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.documentRef, forKey: .documentRef)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.items, forKey: .items)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case typeId
        case kind
        case partnerId
        case employeeId
        case bankAccountId
        case number
        case name
        case startDate
        case endDate
        case autoRenew
        case value
        case billingPeriod
        case currency
        case status
        case notes
        case documentRef
        case createdAt
        case items
    }
}