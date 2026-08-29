import Foundation

public struct PostV1PurchasesReceiptsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let orderId: String
    public let receiptNumber: String
    public let receiptDate: String
    public let warehouseId: String
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        orderId: String,
        receiptNumber: String,
        receiptDate: String,
        warehouseId: String,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.orderId = orderId
        self.receiptNumber = receiptNumber
        self.receiptDate = receiptDate
        self.warehouseId = warehouseId
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.receiptNumber = try container.decode(String.self, forKey: .receiptNumber)
        self.receiptDate = try container.decode(String.self, forKey: .receiptDate)
        self.warehouseId = try container.decode(String.self, forKey: .warehouseId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.receiptNumber, forKey: .receiptNumber)
        try container.encode(self.receiptDate, forKey: .receiptDate)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case orderId
        case receiptNumber
        case receiptDate
        case warehouseId
        case notes
        case createdAt
    }
}