import Foundation

extension Requests {
    public struct AssetsCreateFromPurchaseAssetsRequest: Codable, Hashable, Sendable {
        public let purchaseInvoiceLineId: String
        public let groupId: String
        public let code: String
        public let name: String?
        public let depreciationStartDate: CalendarDate?
        public let acquisitionCost: String?
        public let salvageValue: String?
        public let usefulLifeMonths: Int64?
        public let notes: String?
        public let documents: [AssetsCreateFromPurchaseAssetsRequestDocumentsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            purchaseInvoiceLineId: String,
            groupId: String,
            code: String,
            name: String? = nil,
            depreciationStartDate: CalendarDate? = nil,
            acquisitionCost: String? = nil,
            salvageValue: String? = nil,
            usefulLifeMonths: Int64? = nil,
            notes: String? = nil,
            documents: [AssetsCreateFromPurchaseAssetsRequestDocumentsItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.purchaseInvoiceLineId = purchaseInvoiceLineId
            self.groupId = groupId
            self.code = code
            self.name = name
            self.depreciationStartDate = depreciationStartDate
            self.acquisitionCost = acquisitionCost
            self.salvageValue = salvageValue
            self.usefulLifeMonths = usefulLifeMonths
            self.notes = notes
            self.documents = documents
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.purchaseInvoiceLineId = try container.decode(String.self, forKey: .purchaseInvoiceLineId)
            self.groupId = try container.decode(String.self, forKey: .groupId)
            self.code = try container.decode(String.self, forKey: .code)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.depreciationStartDate = try container.decodeIfPresent(CalendarDate.self, forKey: .depreciationStartDate)
            self.acquisitionCost = try container.decodeIfPresent(String.self, forKey: .acquisitionCost)
            self.salvageValue = try container.decodeIfPresent(String.self, forKey: .salvageValue)
            self.usefulLifeMonths = try container.decodeIfPresent(Int64.self, forKey: .usefulLifeMonths)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.documents = try container.decodeIfPresent([AssetsCreateFromPurchaseAssetsRequestDocumentsItem].self, forKey: .documents)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.purchaseInvoiceLineId, forKey: .purchaseInvoiceLineId)
            try container.encode(self.groupId, forKey: .groupId)
            try container.encode(self.code, forKey: .code)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.depreciationStartDate, forKey: .depreciationStartDate)
            try container.encodeIfPresent(self.acquisitionCost, forKey: .acquisitionCost)
            try container.encodeIfPresent(self.salvageValue, forKey: .salvageValue)
            try container.encodeIfPresent(self.usefulLifeMonths, forKey: .usefulLifeMonths)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.documents, forKey: .documents)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case purchaseInvoiceLineId
            case groupId
            case code
            case name
            case depreciationStartDate
            case acquisitionCost
            case salvageValue
            case usefulLifeMonths
            case notes
            case documents
        }
    }
}