import Foundation

public struct ShiftsListPosResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let deviceId: String
    public let warehouseId: Nullable<String>
    public let status: ShiftsListPosResponseRowsItemStatus
    public let openingCash: String
    public let countedCash: Nullable<String>
    public let receiptCount: Int64
    public let reportId: Nullable<String>
    public let openedAt: Date
    public let closedAt: Nullable<Date>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        deviceId: String,
        warehouseId: Nullable<String>,
        status: ShiftsListPosResponseRowsItemStatus,
        openingCash: String,
        countedCash: Nullable<String>,
        receiptCount: Int64,
        reportId: Nullable<String>,
        openedAt: Date,
        closedAt: Nullable<Date>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.deviceId = deviceId
        self.warehouseId = warehouseId
        self.status = status
        self.openingCash = openingCash
        self.countedCash = countedCash
        self.receiptCount = receiptCount
        self.reportId = reportId
        self.openedAt = openedAt
        self.closedAt = closedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.warehouseId = try container.decode(Nullable<String>.self, forKey: .warehouseId)
        self.status = try container.decode(ShiftsListPosResponseRowsItemStatus.self, forKey: .status)
        self.openingCash = try container.decode(String.self, forKey: .openingCash)
        self.countedCash = try container.decode(Nullable<String>.self, forKey: .countedCash)
        self.receiptCount = try container.decode(Int64.self, forKey: .receiptCount)
        self.reportId = try container.decode(Nullable<String>.self, forKey: .reportId)
        self.openedAt = try container.decode(Date.self, forKey: .openedAt)
        self.closedAt = try container.decode(Nullable<Date>.self, forKey: .closedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.openingCash, forKey: .openingCash)
        try container.encode(self.countedCash, forKey: .countedCash)
        try container.encode(self.receiptCount, forKey: .receiptCount)
        try container.encode(self.reportId, forKey: .reportId)
        try container.encode(self.openedAt, forKey: .openedAt)
        try container.encode(self.closedAt, forKey: .closedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case deviceId
        case warehouseId
        case status
        case openingCash
        case countedCash
        case receiptCount
        case reportId
        case openedAt
        case closedAt
    }
}