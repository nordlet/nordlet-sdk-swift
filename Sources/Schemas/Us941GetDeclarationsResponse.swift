import Foundation

public struct Us941GetDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Double
    public let quarter: Double
    public let line1: Double
    public let line2: String
    public let line3: String
    public let line4: Bool
    public let line5A: Us941GetDeclarationsResponseLine5A
    public let line5C: Us941GetDeclarationsResponseLine5C
    public let line5D: Us941GetDeclarationsResponseLine5D
    public let line5E: String
    public let line6: String
    public let line7: String
    public let line10: String
    public let line12: String
    public let line13: Nullable<String>
    public let line14: Nullable<String>
    public let line15: Nullable<String>
    public let line16: Us941GetDeclarationsResponseLine16
    public let scheduleB: [Us941GetDeclarationsResponseScheduleBItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Double,
        quarter: Double,
        line1: Double,
        line2: String,
        line3: String,
        line4: Bool,
        line5A: Us941GetDeclarationsResponseLine5A,
        line5C: Us941GetDeclarationsResponseLine5C,
        line5D: Us941GetDeclarationsResponseLine5D,
        line5E: String,
        line6: String,
        line7: String,
        line10: String,
        line12: String,
        line13: Nullable<String>,
        line14: Nullable<String>,
        line15: Nullable<String>,
        line16: Us941GetDeclarationsResponseLine16,
        scheduleB: [Us941GetDeclarationsResponseScheduleBItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.quarter = quarter
        self.line1 = line1
        self.line2 = line2
        self.line3 = line3
        self.line4 = line4
        self.line5A = line5A
        self.line5C = line5C
        self.line5D = line5D
        self.line5E = line5E
        self.line6 = line6
        self.line7 = line7
        self.line10 = line10
        self.line12 = line12
        self.line13 = line13
        self.line14 = line14
        self.line15 = line15
        self.line16 = line16
        self.scheduleB = scheduleB
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Double.self, forKey: .year)
        self.quarter = try container.decode(Double.self, forKey: .quarter)
        self.line1 = try container.decode(Double.self, forKey: .line1)
        self.line2 = try container.decode(String.self, forKey: .line2)
        self.line3 = try container.decode(String.self, forKey: .line3)
        self.line4 = try container.decode(Bool.self, forKey: .line4)
        self.line5A = try container.decode(Us941GetDeclarationsResponseLine5A.self, forKey: .line5A)
        self.line5C = try container.decode(Us941GetDeclarationsResponseLine5C.self, forKey: .line5C)
        self.line5D = try container.decode(Us941GetDeclarationsResponseLine5D.self, forKey: .line5D)
        self.line5E = try container.decode(String.self, forKey: .line5E)
        self.line6 = try container.decode(String.self, forKey: .line6)
        self.line7 = try container.decode(String.self, forKey: .line7)
        self.line10 = try container.decode(String.self, forKey: .line10)
        self.line12 = try container.decode(String.self, forKey: .line12)
        self.line13 = try container.decode(Nullable<String>.self, forKey: .line13)
        self.line14 = try container.decode(Nullable<String>.self, forKey: .line14)
        self.line15 = try container.decode(Nullable<String>.self, forKey: .line15)
        self.line16 = try container.decode(Us941GetDeclarationsResponseLine16.self, forKey: .line16)
        self.scheduleB = try container.decode([Us941GetDeclarationsResponseScheduleBItem].self, forKey: .scheduleB)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.quarter, forKey: .quarter)
        try container.encode(self.line1, forKey: .line1)
        try container.encode(self.line2, forKey: .line2)
        try container.encode(self.line3, forKey: .line3)
        try container.encode(self.line4, forKey: .line4)
        try container.encode(self.line5A, forKey: .line5A)
        try container.encode(self.line5C, forKey: .line5C)
        try container.encode(self.line5D, forKey: .line5D)
        try container.encode(self.line5E, forKey: .line5E)
        try container.encode(self.line6, forKey: .line6)
        try container.encode(self.line7, forKey: .line7)
        try container.encode(self.line10, forKey: .line10)
        try container.encode(self.line12, forKey: .line12)
        try container.encode(self.line13, forKey: .line13)
        try container.encode(self.line14, forKey: .line14)
        try container.encode(self.line15, forKey: .line15)
        try container.encode(self.line16, forKey: .line16)
        try container.encode(self.scheduleB, forKey: .scheduleB)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case quarter
        case line1
        case line2
        case line3
        case line4
        case line5A = "line5a"
        case line5C = "line5c"
        case line5D = "line5d"
        case line5E = "line5e"
        case line6
        case line7
        case line10
        case line12
        case line13
        case line14
        case line15
        case line16
        case scheduleB
    }
}