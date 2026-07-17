import Foundation

public struct PostV1HrEmployeesAttachmentsListResponse: Codable, Hashable, Sendable {
    public let rows: [PostV1HrEmployeesAttachmentsListResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rows: [PostV1HrEmployeesAttachmentsListResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rows = try container.decode([PostV1HrEmployeesAttachmentsListResponseRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rows
    }
}