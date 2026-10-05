import Foundation

public struct OrdersListPurchasesResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let status: OrdersListPurchasesResponseRowsItemStatus
    public let orderNumber: String
    public let orderDate: CalendarDate
    public let expectedDate: Nullable<CalendarDate>
    public let warehouseId: Nullable<String>
    public let currency: String
    public let netTotal: String
    public let vatTotal: String
    public let grossTotal: String
    public let approvedBy: Nullable<String>
    public let approvedAt: Nullable<Date>
    public let notes: Nullable<String>
    public let documentRef: Nullable<String>
    public let createdAt: Date
    public let updatedAt: Date
    public let partnerName: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        status: OrdersListPurchasesResponseRowsItemStatus,
        orderNumber: String,
        orderDate: CalendarDate,
        expectedDate: Nullable<CalendarDate>,
        warehouseId: Nullable<String>,
        currency: String,
        netTotal: String,
        vatTotal: String,
        grossTotal: String,
        approvedBy: Nullable<String>,
        approvedAt: Nullable<Date>,
        notes: Nullable<String>,
        documentRef: Nullable<String>,
        createdAt: Date,
        updatedAt: Date,
        partnerName: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.status = status
        self.orderNumber = orderNumber
        self.orderDate = orderDate
        self.expectedDate = expectedDate
        self.warehouseId = warehouseId
        self.currency = currency
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.grossTotal = grossTotal
        self.approvedBy = approvedBy
        self.approvedAt = approvedAt
        self.notes = notes
        self.documentRef = documentRef
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.partnerName = partnerName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.status = try container.decode(OrdersListPurchasesResponseRowsItemStatus.self, forKey: .status)
        self.orderNumber = try container.decode(String.self, forKey: .orderNumber)
        self.orderDate = try container.decode(CalendarDate.self, forKey: .orderDate)
        self.expectedDate = try container.decode(Nullable<CalendarDate>.self, forKey: .expectedDate)
        self.warehouseId = try container.decode(Nullable<String>.self, forKey: .warehouseId)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.approvedBy = try container.decode(Nullable<String>.self, forKey: .approvedBy)
        self.approvedAt = try container.decode(Nullable<Date>.self, forKey: .approvedAt)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.documentRef = try container.decode(Nullable<String>.self, forKey: .documentRef)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.partnerName = try container.decode(Nullable<String>.self, forKey: .partnerName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.orderNumber, forKey: .orderNumber)
        try container.encode(self.orderDate, forKey: .orderDate)
        try container.encode(self.expectedDate, forKey: .expectedDate)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.approvedBy, forKey: .approvedBy)
        try container.encode(self.approvedAt, forKey: .approvedAt)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.documentRef, forKey: .documentRef)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.partnerName, forKey: .partnerName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case status
        case orderNumber
        case orderDate
        case expectedDate
        case warehouseId
        case currency
        case netTotal
        case vatTotal
        case grossTotal
        case approvedBy
        case approvedAt
        case notes
        case documentRef
        case createdAt
        case updatedAt
        case partnerName
    }
}