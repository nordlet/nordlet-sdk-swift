import Foundation

extension Requests {
    public struct PostV1DocumentSeriesUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let documentType: PostV1DocumentSeriesUpdateRequestDocumentType?
        public let prefix: String?
        public let name: Nullable<String>?
        public let label: Nullable<String>?
        public let operationTypeId: Nullable<String>?
        public let numberLength: Int64?
        public let nextNumber: Int64?
        public let allocatedFrom: Nullable<Int64>?
        public let allocatedTo: Nullable<Int64>?
        public let warehouseId: Nullable<String>?
        public let printSeries: Bool?
        public let isDefault: Bool?
        public let isActive: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            documentType: PostV1DocumentSeriesUpdateRequestDocumentType? = nil,
            prefix: String? = nil,
            name: Nullable<String>? = nil,
            label: Nullable<String>? = nil,
            operationTypeId: Nullable<String>? = nil,
            numberLength: Int64? = nil,
            nextNumber: Int64? = nil,
            allocatedFrom: Nullable<Int64>? = nil,
            allocatedTo: Nullable<Int64>? = nil,
            warehouseId: Nullable<String>? = nil,
            printSeries: Bool? = nil,
            isDefault: Bool? = nil,
            isActive: Bool? = nil,
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
            self.allocatedFrom = allocatedFrom
            self.allocatedTo = allocatedTo
            self.warehouseId = warehouseId
            self.printSeries = printSeries
            self.isDefault = isDefault
            self.isActive = isActive
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.documentType = try container.decodeIfPresent(PostV1DocumentSeriesUpdateRequestDocumentType.self, forKey: .documentType)
            self.prefix = try container.decodeIfPresent(String.self, forKey: .prefix)
            self.name = try container.decodeNullableIfPresent(String.self, forKey: .name)
            self.label = try container.decodeNullableIfPresent(String.self, forKey: .label)
            self.operationTypeId = try container.decodeNullableIfPresent(String.self, forKey: .operationTypeId)
            self.numberLength = try container.decodeIfPresent(Int64.self, forKey: .numberLength)
            self.nextNumber = try container.decodeIfPresent(Int64.self, forKey: .nextNumber)
            self.allocatedFrom = try container.decodeNullableIfPresent(Int64.self, forKey: .allocatedFrom)
            self.allocatedTo = try container.decodeNullableIfPresent(Int64.self, forKey: .allocatedTo)
            self.warehouseId = try container.decodeNullableIfPresent(String.self, forKey: .warehouseId)
            self.printSeries = try container.decodeIfPresent(Bool.self, forKey: .printSeries)
            self.isDefault = try container.decodeIfPresent(Bool.self, forKey: .isDefault)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.documentType, forKey: .documentType)
            try container.encodeIfPresent(self.prefix, forKey: .prefix)
            try container.encodeNullableIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.label, forKey: .label)
            try container.encodeNullableIfPresent(self.operationTypeId, forKey: .operationTypeId)
            try container.encodeIfPresent(self.numberLength, forKey: .numberLength)
            try container.encodeIfPresent(self.nextNumber, forKey: .nextNumber)
            try container.encodeNullableIfPresent(self.allocatedFrom, forKey: .allocatedFrom)
            try container.encodeNullableIfPresent(self.allocatedTo, forKey: .allocatedTo)
            try container.encodeNullableIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encodeIfPresent(self.printSeries, forKey: .printSeries)
            try container.encodeIfPresent(self.isDefault, forKey: .isDefault)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
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
            case allocatedFrom
            case allocatedTo
            case warehouseId
            case printSeries
            case isDefault
            case isActive
        }
    }
}