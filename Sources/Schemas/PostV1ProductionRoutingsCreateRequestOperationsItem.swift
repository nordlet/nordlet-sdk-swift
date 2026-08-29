import Foundation

public struct PostV1ProductionRoutingsCreateRequestOperationsItem: Codable, Hashable, Sendable {
    public let sequence: Int64
    public let name: String
    public let workCenterId: String
    public let setupMinutes: String?
    public let runMinutesPerUnit: String?
    public let qualityCheckName: String?
    public let notes: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sequence: Int64,
        name: String,
        workCenterId: String,
        setupMinutes: String? = nil,
        runMinutesPerUnit: String? = nil,
        qualityCheckName: String? = nil,
        notes: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sequence = sequence
        self.name = name
        self.workCenterId = workCenterId
        self.setupMinutes = setupMinutes
        self.runMinutesPerUnit = runMinutesPerUnit
        self.qualityCheckName = qualityCheckName
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sequence = try container.decode(Int64.self, forKey: .sequence)
        self.name = try container.decode(String.self, forKey: .name)
        self.workCenterId = try container.decode(String.self, forKey: .workCenterId)
        self.setupMinutes = try container.decodeIfPresent(String.self, forKey: .setupMinutes)
        self.runMinutesPerUnit = try container.decodeIfPresent(String.self, forKey: .runMinutesPerUnit)
        self.qualityCheckName = try container.decodeIfPresent(String.self, forKey: .qualityCheckName)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sequence, forKey: .sequence)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.workCenterId, forKey: .workCenterId)
        try container.encodeIfPresent(self.setupMinutes, forKey: .setupMinutes)
        try container.encodeIfPresent(self.runMinutesPerUnit, forKey: .runMinutesPerUnit)
        try container.encodeIfPresent(self.qualityCheckName, forKey: .qualityCheckName)
        try container.encodeIfPresent(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sequence
        case name
        case workCenterId
        case setupMinutes
        case runMinutesPerUnit
        case qualityCheckName
        case notes
    }
}