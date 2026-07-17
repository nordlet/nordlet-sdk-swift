import Foundation

extension Requests {
    public struct PostV1AssetsGroupsListRequest: Codable, Hashable, Sendable {
        public let page: Int64?
        public let pageSize: Int64?
        public let sort: [PostV1AssetsGroupsListRequestSortItem]?
        public let filter: [PostV1AssetsGroupsListRequestFilterItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            page: Int64? = nil,
            pageSize: Int64? = nil,
            sort: [PostV1AssetsGroupsListRequestSortItem]? = nil,
            filter: [PostV1AssetsGroupsListRequestFilterItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.page = page
            self.pageSize = pageSize
            self.sort = sort
            self.filter = filter
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.page = try container.decodeIfPresent(Int64.self, forKey: .page)
            self.pageSize = try container.decodeIfPresent(Int64.self, forKey: .pageSize)
            self.sort = try container.decodeIfPresent([PostV1AssetsGroupsListRequestSortItem].self, forKey: .sort)
            self.filter = try container.decodeIfPresent([PostV1AssetsGroupsListRequestFilterItem].self, forKey: .filter)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.page, forKey: .page)
            try container.encodeIfPresent(self.pageSize, forKey: .pageSize)
            try container.encodeIfPresent(self.sort, forKey: .sort)
            try container.encodeIfPresent(self.filter, forKey: .filter)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case page
            case pageSize
            case sort
            case filter
        }
    }
}