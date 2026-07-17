import Foundation

public struct PostV1ProductionBomsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let code: String
    public let name: String
    public let finishedItemId: String
    public let outputQuantity: String
    public let isActive: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        code: String,
        name: String,
        finishedItemId: String,
        outputQuantity: String,
        isActive: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.code = code
        self.name = name
        self.finishedItemId = finishedItemId
        self.outputQuantity = outputQuantity
        self.isActive = isActive
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.finishedItemId = try container.decode(String.self, forKey: .finishedItemId)
        self.outputQuantity = try container.decode(String.self, forKey: .outputQuantity)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.finishedItemId, forKey: .finishedItemId)
        try container.encode(self.outputQuantity, forKey: .outputQuantity)
        try container.encode(self.isActive, forKey: .isActive)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case code
        case name
        case finishedItemId
        case outputQuantity
        case isActive
    }
}