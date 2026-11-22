import Foundation

public struct UsFlsaRecordsListDeclarationsResponseEmployeesItemWorkweekStart: Codable, Hashable, Sendable {
    public let day: String
    public let time: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        day: String,
        time: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.day = day
        self.time = time
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.day = try container.decode(String.self, forKey: .day)
        self.time = try container.decode(Nullable<String>.self, forKey: .time)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.day, forKey: .day)
        try container.encode(self.time, forKey: .time)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case day
        case time
    }
}