import Foundation

public struct PostV1MigrationBooksImportRequestFixedAssetsItem: Codable, Hashable, Sendable {
    public let groupCode: String
    public let code: String
    public let name: String
    public let acquisitionDate: String
    public let depreciationStartDate: String?
    public let acquisitionCost: String
    public let salvageValue: String?
    public let usefulLifeMonths: Int64?
    public let accumulatedDepreciation: String?
    public let depreciatedMonths: Int64?
    public let notes: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        groupCode: String,
        code: String,
        name: String,
        acquisitionDate: String,
        depreciationStartDate: String? = nil,
        acquisitionCost: String,
        salvageValue: String? = nil,
        usefulLifeMonths: Int64? = nil,
        accumulatedDepreciation: String? = nil,
        depreciatedMonths: Int64? = nil,
        notes: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.groupCode = groupCode
        self.code = code
        self.name = name
        self.acquisitionDate = acquisitionDate
        self.depreciationStartDate = depreciationStartDate
        self.acquisitionCost = acquisitionCost
        self.salvageValue = salvageValue
        self.usefulLifeMonths = usefulLifeMonths
        self.accumulatedDepreciation = accumulatedDepreciation
        self.depreciatedMonths = depreciatedMonths
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.groupCode = try container.decode(String.self, forKey: .groupCode)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.acquisitionDate = try container.decode(String.self, forKey: .acquisitionDate)
        self.depreciationStartDate = try container.decodeIfPresent(String.self, forKey: .depreciationStartDate)
        self.acquisitionCost = try container.decode(String.self, forKey: .acquisitionCost)
        self.salvageValue = try container.decodeIfPresent(String.self, forKey: .salvageValue)
        self.usefulLifeMonths = try container.decodeIfPresent(Int64.self, forKey: .usefulLifeMonths)
        self.accumulatedDepreciation = try container.decodeIfPresent(String.self, forKey: .accumulatedDepreciation)
        self.depreciatedMonths = try container.decodeIfPresent(Int64.self, forKey: .depreciatedMonths)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.groupCode, forKey: .groupCode)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.acquisitionDate, forKey: .acquisitionDate)
        try container.encodeIfPresent(self.depreciationStartDate, forKey: .depreciationStartDate)
        try container.encode(self.acquisitionCost, forKey: .acquisitionCost)
        try container.encodeIfPresent(self.salvageValue, forKey: .salvageValue)
        try container.encodeIfPresent(self.usefulLifeMonths, forKey: .usefulLifeMonths)
        try container.encodeIfPresent(self.accumulatedDepreciation, forKey: .accumulatedDepreciation)
        try container.encodeIfPresent(self.depreciatedMonths, forKey: .depreciatedMonths)
        try container.encodeIfPresent(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case groupCode
        case code
        case name
        case acquisitionDate
        case depreciationStartDate
        case acquisitionCost
        case salvageValue
        case usefulLifeMonths
        case accumulatedDepreciation
        case depreciatedMonths
        case notes
    }
}