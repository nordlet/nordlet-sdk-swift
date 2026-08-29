import Foundation

public struct PostV1ProductionRoutingsGetResponseOperationsItem: Codable, Hashable, Sendable {
    public let id: String
    public let sequence: Int64
    public let name: String
    public let workCenterId: String
    public let setupMinutes: String
    public let runMinutesPerUnit: String
    public let qualityCheckName: Nullable<String>
    public let notes: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        sequence: Int64,
        name: String,
        workCenterId: String,
        setupMinutes: String,
        runMinutesPerUnit: String,
        qualityCheckName: Nullable<String>,
        notes: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
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
        self.id = try container.decode(String.self, forKey: .id)
        self.sequence = try container.decode(Int64.self, forKey: .sequence)
        self.name = try container.decode(String.self, forKey: .name)
        self.workCenterId = try container.decode(String.self, forKey: .workCenterId)
        self.setupMinutes = try container.decode(String.self, forKey: .setupMinutes)
        self.runMinutesPerUnit = try container.decode(String.self, forKey: .runMinutesPerUnit)
        self.qualityCheckName = try container.decode(Nullable<String>.self, forKey: .qualityCheckName)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.sequence, forKey: .sequence)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.workCenterId, forKey: .workCenterId)
        try container.encode(self.setupMinutes, forKey: .setupMinutes)
        try container.encode(self.runMinutesPerUnit, forKey: .runMinutesPerUnit)
        try container.encode(self.qualityCheckName, forKey: .qualityCheckName)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case sequence
        case name
        case workCenterId
        case setupMinutes
        case runMinutesPerUnit
        case qualityCheckName
        case notes
    }
}