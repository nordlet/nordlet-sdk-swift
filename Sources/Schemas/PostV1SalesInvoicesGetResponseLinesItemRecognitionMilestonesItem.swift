import Foundation

public struct PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem: Codable, Hashable, Sendable {
    public let description: String
    public let expectedDate: Nullable<String>
    public let percent: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        description: String,
        expectedDate: Nullable<String>,
        percent: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.description = description
        self.expectedDate = expectedDate
        self.percent = percent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.description = try container.decode(String.self, forKey: .description)
        self.expectedDate = try container.decode(Nullable<String>.self, forKey: .expectedDate)
        self.percent = try container.decode(String.self, forKey: .percent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.expectedDate, forKey: .expectedDate)
        try container.encode(self.percent, forKey: .percent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case expectedDate
        case percent
    }
}