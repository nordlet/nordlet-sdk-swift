import Foundation

public struct PostV1PosDevicesUpdateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let serialNumber: String
    public let model: Nullable<String>
    public let registrationNumber: Nullable<String>
    public let address: Nullable<String>
    public let isActive: Bool
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        serialNumber: String,
        model: Nullable<String>,
        registrationNumber: Nullable<String>,
        address: Nullable<String>,
        isActive: Bool,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.serialNumber = serialNumber
        self.model = model
        self.registrationNumber = registrationNumber
        self.address = address
        self.isActive = isActive
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.serialNumber = try container.decode(String.self, forKey: .serialNumber)
        self.model = try container.decode(Nullable<String>.self, forKey: .model)
        self.registrationNumber = try container.decode(Nullable<String>.self, forKey: .registrationNumber)
        self.address = try container.decode(Nullable<String>.self, forKey: .address)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.serialNumber, forKey: .serialNumber)
        try container.encode(self.model, forKey: .model)
        try container.encode(self.registrationNumber, forKey: .registrationNumber)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case serialNumber
        case model
        case registrationNumber
        case address
        case isActive
        case createdAt
    }
}