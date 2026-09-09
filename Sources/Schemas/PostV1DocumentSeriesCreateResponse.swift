import Foundation

public struct PostV1DocumentSeriesCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let documentType: String
    public let prefix: String
    public let name: Nullable<String>
    public let label: Nullable<String>
    public let operationTypeId: Nullable<String>
    public let numberLength: Int64
    public let nextNumber: Int64
    public let warehouseId: Nullable<String>
    public let printSeries: Bool
    public let isDefault: Bool
    public let isActive: Bool
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        documentType: String,
        prefix: String,
        name: Nullable<String>,
        label: Nullable<String>,
        operationTypeId: Nullable<String>,
        numberLength: Int64,
        nextNumber: Int64,
        warehouseId: Nullable<String>,
        printSeries: Bool,
        isDefault: Bool,
        isActive: Bool,
        createdAt: String,
        updatedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.documentType = documentType
        self.prefix = prefix
        self.name = name
        self.label = label
        self.operationTypeId = operationTypeId
        self.numberLength = numberLength
        self.nextNumber = nextNumber
        self.warehouseId = warehouseId
        self.printSeries = printSeries
        self.isDefault = isDefault
        self.isActive = isActive
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.documentType = try container.decode(String.self, forKey: .documentType)
        self.prefix = try container.decode(String.self, forKey: .prefix)
        self.name = try container.decode(Nullable<String>.self, forKey: .name)
        self.label = try container.decode(Nullable<String>.self, forKey: .label)
        self.operationTypeId = try container.decode(Nullable<String>.self, forKey: .operationTypeId)
        self.numberLength = try container.decode(Int64.self, forKey: .numberLength)
        self.nextNumber = try container.decode(Int64.self, forKey: .nextNumber)
        self.warehouseId = try container.decode(Nullable<String>.self, forKey: .warehouseId)
        self.printSeries = try container.decode(Bool.self, forKey: .printSeries)
        self.isDefault = try container.decode(Bool.self, forKey: .isDefault)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.prefix, forKey: .prefix)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.label, forKey: .label)
        try container.encode(self.operationTypeId, forKey: .operationTypeId)
        try container.encode(self.numberLength, forKey: .numberLength)
        try container.encode(self.nextNumber, forKey: .nextNumber)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.printSeries, forKey: .printSeries)
        try container.encode(self.isDefault, forKey: .isDefault)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case documentType
        case prefix
        case name
        case label
        case operationTypeId
        case numberLength
        case nextNumber
        case warehouseId
        case printSeries
        case isDefault
        case isActive
        case createdAt
        case updatedAt
    }
}