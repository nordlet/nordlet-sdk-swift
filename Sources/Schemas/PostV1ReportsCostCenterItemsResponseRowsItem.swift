import Foundation

public struct PostV1ReportsCostCenterItemsResponseRowsItem: Codable, Hashable, Sendable {
    public let costCenterCode: String
    public let costCenterName: String
    public let itemName: String
    public let net: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        costCenterCode: String,
        costCenterName: String,
        itemName: String,
        net: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.costCenterCode = costCenterCode
        self.costCenterName = costCenterName
        self.itemName = itemName
        self.net = net
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.costCenterCode = try container.decode(String.self, forKey: .costCenterCode)
        self.costCenterName = try container.decode(String.self, forKey: .costCenterName)
        self.itemName = try container.decode(String.self, forKey: .itemName)
        self.net = try container.decode(String.self, forKey: .net)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.costCenterCode, forKey: .costCenterCode)
        try container.encode(self.costCenterName, forKey: .costCenterName)
        try container.encode(self.itemName, forKey: .itemName)
        try container.encode(self.net, forKey: .net)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case costCenterCode
        case costCenterName
        case itemName
        case net
    }
}