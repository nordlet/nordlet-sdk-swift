import Foundation

public struct UsW2ListDeclarationsResponseFormsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let boxA: Nullable<String>
    public let boxE: UsW2ListDeclarationsResponseFormsItemBoxE
    public let box1: String
    public let box2: String
    public let box3: String
    public let box4: String
    public let box5: String
    public let box6: String
    public let states: [UsW2ListDeclarationsResponseFormsItemStatesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        boxA: Nullable<String>,
        boxE: UsW2ListDeclarationsResponseFormsItemBoxE,
        box1: String,
        box2: String,
        box3: String,
        box4: String,
        box5: String,
        box6: String,
        states: [UsW2ListDeclarationsResponseFormsItemStatesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.boxA = boxA
        self.boxE = boxE
        self.box1 = box1
        self.box2 = box2
        self.box3 = box3
        self.box4 = box4
        self.box5 = box5
        self.box6 = box6
        self.states = states
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.boxA = try container.decode(Nullable<String>.self, forKey: .boxA)
        self.boxE = try container.decode(UsW2ListDeclarationsResponseFormsItemBoxE.self, forKey: .boxE)
        self.box1 = try container.decode(String.self, forKey: .box1)
        self.box2 = try container.decode(String.self, forKey: .box2)
        self.box3 = try container.decode(String.self, forKey: .box3)
        self.box4 = try container.decode(String.self, forKey: .box4)
        self.box5 = try container.decode(String.self, forKey: .box5)
        self.box6 = try container.decode(String.self, forKey: .box6)
        self.states = try container.decode([UsW2ListDeclarationsResponseFormsItemStatesItem].self, forKey: .states)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.boxA, forKey: .boxA)
        try container.encode(self.boxE, forKey: .boxE)
        try container.encode(self.box1, forKey: .box1)
        try container.encode(self.box2, forKey: .box2)
        try container.encode(self.box3, forKey: .box3)
        try container.encode(self.box4, forKey: .box4)
        try container.encode(self.box5, forKey: .box5)
        try container.encode(self.box6, forKey: .box6)
        try container.encode(self.states, forKey: .states)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case boxA
        case boxE
        case box1
        case box2
        case box3
        case box4
        case box5
        case box6
        case states
    }
}