import Foundation

public struct PostV1HrTimesheetsGetResponseDaysItem: Codable, Hashable, Sendable {
    public let day: Int64
    public let hours: String
    public let type: PostV1HrTimesheetsGetResponseDaysItemType
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        day: Int64,
        hours: String,
        type: PostV1HrTimesheetsGetResponseDaysItemType,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.day = day
        self.hours = hours
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.day = try container.decode(Int64.self, forKey: .day)
        self.hours = try container.decode(String.self, forKey: .hours)
        self.type = try container.decode(PostV1HrTimesheetsGetResponseDaysItemType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.day, forKey: .day)
        try container.encode(self.hours, forKey: .hours)
        try container.encode(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case day
        case hours
        case type
    }
}