import Foundation

public struct PostV1PurchasesOrdersCancelResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let status: PostV1PurchasesOrdersCancelResponseStatus
    public let orderNumber: String
    public let orderDate: String
    public let expectedDate: Nullable<String>
    public let warehouseId: Nullable<String>
    public let currency: String
    public let netTotal: String
    public let vatTotal: String
    public let grossTotal: String
    public let approvedBy: Nullable<String>
    public let approvedAt: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    public let lines: [PostV1PurchasesOrdersCancelResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        status: PostV1PurchasesOrdersCancelResponseStatus,
        orderNumber: String,
        orderDate: String,
        expectedDate: Nullable<String>,
        warehouseId: Nullable<String>,
        currency: String,
        netTotal: String,
        vatTotal: String,
        grossTotal: String,
        approvedBy: Nullable<String>,
        approvedAt: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        lines: [PostV1PurchasesOrdersCancelResponseLinesItem],
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
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.status = try container.decode(PostV1PurchasesOrdersCancelResponseStatus.self, forKey: .status)
        self.orderNumber = try container.decode(String.self, forKey: .orderNumber)
        self.orderDate = try container.decode(String.self, forKey: .orderDate)
        self.expectedDate = try container.decode(Nullable<String>.self, forKey: .expectedDate)
        self.warehouseId = try container.decode(Nullable<String>.self, forKey: .warehouseId)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.approvedBy = try container.decode(Nullable<String>.self, forKey: .approvedBy)
        self.approvedAt = try container.decode(Nullable<String>.self, forKey: .approvedAt)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.lines = try container.decode([PostV1PurchasesOrdersCancelResponseLinesItem].self, forKey: .lines)
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
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.lines, forKey: .lines)
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
        case createdAt
        case updatedAt
        case lines
    }
}