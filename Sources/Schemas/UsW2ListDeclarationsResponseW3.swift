import Foundation

public struct UsW2ListDeclarationsResponseW3: Codable, Hashable, Sendable {
    public let boxC: Double
    public let boxE: Nullable<String>
    public let boxF: String
    public let box1: String
    public let box2: String
    public let box3: String
    public let box4: String
    public let box5: String
    public let box6: String
    public let box16: String
    public let box17: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        boxC: Double,
        boxE: Nullable<String>,
        boxF: String,
        box1: String,
        box2: String,
        box3: String,
        box4: String,
        box5: String,
        box6: String,
        box16: String,
        box17: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.boxC = boxC
        self.boxE = boxE
        self.boxF = boxF
        self.box1 = box1
        self.box2 = box2
        self.box3 = box3
        self.box4 = box4
        self.box5 = box5
        self.box6 = box6
        self.box16 = box16
        self.box17 = box17
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.boxC = try container.decode(Double.self, forKey: .boxC)
        self.boxE = try container.decode(Nullable<String>.self, forKey: .boxE)
        self.boxF = try container.decode(String.self, forKey: .boxF)
        self.box1 = try container.decode(String.self, forKey: .box1)
        self.box2 = try container.decode(String.self, forKey: .box2)
        self.box3 = try container.decode(String.self, forKey: .box3)
        self.box4 = try container.decode(String.self, forKey: .box4)
        self.box5 = try container.decode(String.self, forKey: .box5)
        self.box6 = try container.decode(String.self, forKey: .box6)
        self.box16 = try container.decode(String.self, forKey: .box16)
        self.box17 = try container.decode(String.self, forKey: .box17)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.boxC, forKey: .boxC)
        try container.encode(self.boxE, forKey: .boxE)
        try container.encode(self.boxF, forKey: .boxF)
        try container.encode(self.box1, forKey: .box1)
        try container.encode(self.box2, forKey: .box2)
        try container.encode(self.box3, forKey: .box3)
        try container.encode(self.box4, forKey: .box4)
        try container.encode(self.box5, forKey: .box5)
        try container.encode(self.box6, forKey: .box6)
        try container.encode(self.box16, forKey: .box16)
        try container.encode(self.box17, forKey: .box17)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case boxC
        case boxE
        case boxF
        case box1
        case box2
        case box3
        case box4
        case box5
        case box6
        case box16
        case box17
    }
}