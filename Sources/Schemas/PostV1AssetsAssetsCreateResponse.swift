import Foundation

public struct PostV1AssetsAssetsCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let groupId: String
    public let code: String
    public let name: String
    public let acquisitionDate: String
    public let depreciationStartDate: String
    public let acquisitionCost: String
    public let salvageValue: String
    public let usefulLifeMonths: Int64
    public let totalCost: String
    public let accumulatedDepreciation: String
    public let netBookValue: String
    public let depreciatedMonths: Int64
    public let totalLifeMonths: Int64
    public let status: PostV1AssetsAssetsCreateResponseStatus
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        groupId: String,
        code: String,
        name: String,
        acquisitionDate: String,
        depreciationStartDate: String,
        acquisitionCost: String,
        salvageValue: String,
        usefulLifeMonths: Int64,
        totalCost: String,
        accumulatedDepreciation: String,
        netBookValue: String,
        depreciatedMonths: Int64,
        totalLifeMonths: Int64,
        status: PostV1AssetsAssetsCreateResponseStatus,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.groupId = groupId
        self.code = code
        self.name = name
        self.acquisitionDate = acquisitionDate
        self.depreciationStartDate = depreciationStartDate
        self.acquisitionCost = acquisitionCost
        self.salvageValue = salvageValue
        self.usefulLifeMonths = usefulLifeMonths
        self.totalCost = totalCost
        self.accumulatedDepreciation = accumulatedDepreciation
        self.netBookValue = netBookValue
        self.depreciatedMonths = depreciatedMonths
        self.totalLifeMonths = totalLifeMonths
        self.status = status
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.groupId = try container.decode(String.self, forKey: .groupId)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.acquisitionDate = try container.decode(String.self, forKey: .acquisitionDate)
        self.depreciationStartDate = try container.decode(String.self, forKey: .depreciationStartDate)
        self.acquisitionCost = try container.decode(String.self, forKey: .acquisitionCost)
        self.salvageValue = try container.decode(String.self, forKey: .salvageValue)
        self.usefulLifeMonths = try container.decode(Int64.self, forKey: .usefulLifeMonths)
        self.totalCost = try container.decode(String.self, forKey: .totalCost)
        self.accumulatedDepreciation = try container.decode(String.self, forKey: .accumulatedDepreciation)
        self.netBookValue = try container.decode(String.self, forKey: .netBookValue)
        self.depreciatedMonths = try container.decode(Int64.self, forKey: .depreciatedMonths)
        self.totalLifeMonths = try container.decode(Int64.self, forKey: .totalLifeMonths)
        self.status = try container.decode(PostV1AssetsAssetsCreateResponseStatus.self, forKey: .status)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.groupId, forKey: .groupId)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.acquisitionDate, forKey: .acquisitionDate)
        try container.encode(self.depreciationStartDate, forKey: .depreciationStartDate)
        try container.encode(self.acquisitionCost, forKey: .acquisitionCost)
        try container.encode(self.salvageValue, forKey: .salvageValue)
        try container.encode(self.usefulLifeMonths, forKey: .usefulLifeMonths)
        try container.encode(self.totalCost, forKey: .totalCost)
        try container.encode(self.accumulatedDepreciation, forKey: .accumulatedDepreciation)
        try container.encode(self.netBookValue, forKey: .netBookValue)
        try container.encode(self.depreciatedMonths, forKey: .depreciatedMonths)
        try container.encode(self.totalLifeMonths, forKey: .totalLifeMonths)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case groupId
        case code
        case name
        case acquisitionDate
        case depreciationStartDate
        case acquisitionCost
        case salvageValue
        case usefulLifeMonths
        case totalCost
        case accumulatedDepreciation
        case netBookValue
        case depreciatedMonths
        case totalLifeMonths
        case status
        case notes
        case createdAt
    }
}