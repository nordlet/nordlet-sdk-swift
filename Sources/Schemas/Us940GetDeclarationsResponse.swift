import Foundation

public struct Us940GetDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Double
    public let line1A: Nullable<String>
    public let line1B: Bool
    public let line3: String
    public let line4: String
    public let line5: String
    public let line6: String
    public let line7: String
    public let line8: String
    public let line12: String
    public let part5: Nullable<Us940GetDeclarationsResponsePart5>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Double,
        line1A: Nullable<String>,
        line1B: Bool,
        line3: String,
        line4: String,
        line5: String,
        line6: String,
        line7: String,
        line8: String,
        line12: String,
        part5: Nullable<Us940GetDeclarationsResponsePart5>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.line1A = line1A
        self.line1B = line1B
        self.line3 = line3
        self.line4 = line4
        self.line5 = line5
        self.line6 = line6
        self.line7 = line7
        self.line8 = line8
        self.line12 = line12
        self.part5 = part5
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Double.self, forKey: .year)
        self.line1A = try container.decode(Nullable<String>.self, forKey: .line1A)
        self.line1B = try container.decode(Bool.self, forKey: .line1B)
        self.line3 = try container.decode(String.self, forKey: .line3)
        self.line4 = try container.decode(String.self, forKey: .line4)
        self.line5 = try container.decode(String.self, forKey: .line5)
        self.line6 = try container.decode(String.self, forKey: .line6)
        self.line7 = try container.decode(String.self, forKey: .line7)
        self.line8 = try container.decode(String.self, forKey: .line8)
        self.line12 = try container.decode(String.self, forKey: .line12)
        self.part5 = try container.decode(Nullable<Us940GetDeclarationsResponsePart5>.self, forKey: .part5)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.line1A, forKey: .line1A)
        try container.encode(self.line1B, forKey: .line1B)
        try container.encode(self.line3, forKey: .line3)
        try container.encode(self.line4, forKey: .line4)
        try container.encode(self.line5, forKey: .line5)
        try container.encode(self.line6, forKey: .line6)
        try container.encode(self.line7, forKey: .line7)
        try container.encode(self.line8, forKey: .line8)
        try container.encode(self.line12, forKey: .line12)
        try container.encode(self.part5, forKey: .part5)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case line1A = "line1a"
        case line1B = "line1b"
        case line3
        case line4
        case line5
        case line6
        case line7
        case line8
        case line12
        case part5
    }
}