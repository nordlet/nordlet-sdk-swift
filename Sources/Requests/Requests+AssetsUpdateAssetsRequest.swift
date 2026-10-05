import Foundation

extension Requests {
    public struct AssetsUpdateAssetsRequest: Codable, Hashable, Sendable {
        public let groupId: String?
        public let code: String?
        public let name: String?
        public let acquisitionDate: CalendarDate?
        public let depreciationStartDate: CalendarDate?
        public let acquisitionCost: String?
        public let salvageValue: String?
        public let usefulLifeMonths: Int64?
        public let notes: String?
        public let documents: [AssetsUpdateAssetsRequestDocumentsItem]?
        public let id: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            groupId: String? = nil,
            code: String? = nil,
            name: String? = nil,
            acquisitionDate: CalendarDate? = nil,
            depreciationStartDate: CalendarDate? = nil,
            acquisitionCost: String? = nil,
            salvageValue: String? = nil,
            usefulLifeMonths: Int64? = nil,
            notes: String? = nil,
            documents: [AssetsUpdateAssetsRequestDocumentsItem]? = nil,
            id: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.groupId = groupId
            self.code = code
            self.name = name
            self.acquisitionDate = acquisitionDate
            self.depreciationStartDate = depreciationStartDate
            self.acquisitionCost = acquisitionCost
            self.salvageValue = salvageValue
            self.usefulLifeMonths = usefulLifeMonths
            self.notes = notes
            self.documents = documents
            self.id = id
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.groupId = try container.decodeIfPresent(String.self, forKey: .groupId)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.acquisitionDate = try container.decodeIfPresent(CalendarDate.self, forKey: .acquisitionDate)
            self.depreciationStartDate = try container.decodeIfPresent(CalendarDate.self, forKey: .depreciationStartDate)
            self.acquisitionCost = try container.decodeIfPresent(String.self, forKey: .acquisitionCost)
            self.salvageValue = try container.decodeIfPresent(String.self, forKey: .salvageValue)
            self.usefulLifeMonths = try container.decodeIfPresent(Int64.self, forKey: .usefulLifeMonths)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.documents = try container.decodeIfPresent([AssetsUpdateAssetsRequestDocumentsItem].self, forKey: .documents)
            self.id = try container.decode(String.self, forKey: .id)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.groupId, forKey: .groupId)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.acquisitionDate, forKey: .acquisitionDate)
            try container.encodeIfPresent(self.depreciationStartDate, forKey: .depreciationStartDate)
            try container.encodeIfPresent(self.acquisitionCost, forKey: .acquisitionCost)
            try container.encodeIfPresent(self.salvageValue, forKey: .salvageValue)
            try container.encodeIfPresent(self.usefulLifeMonths, forKey: .usefulLifeMonths)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.documents, forKey: .documents)
            try container.encode(self.id, forKey: .id)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case groupId
            case code
            case name
            case acquisitionDate
            case depreciationStartDate
            case acquisitionCost
            case salvageValue
            case usefulLifeMonths
            case notes
            case documents
            case id
        }
    }
}