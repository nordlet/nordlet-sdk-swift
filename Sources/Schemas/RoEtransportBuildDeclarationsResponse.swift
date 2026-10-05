import Foundation

public struct RoEtransportBuildDeclarationsResponse: Codable, Hashable, Sendable {
    public let waybillId: String
    public let fileId: String
    public let fileName: String
    public let xml: String
    public let operationType: String
    public let vehiclePlate: String
    public let blockers: [String]
    public let goods: Int64
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        waybillId: String,
        fileId: String,
        fileName: String,
        xml: String,
        operationType: String,
        vehiclePlate: String,
        blockers: [String],
        goods: Int64,
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.waybillId = waybillId
        self.fileId = fileId
        self.fileName = fileName
        self.xml = xml
        self.operationType = operationType
        self.vehiclePlate = vehiclePlate
        self.blockers = blockers
        self.goods = goods
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.waybillId = try container.decode(String.self, forKey: .waybillId)
        self.fileId = try container.decode(String.self, forKey: .fileId)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.operationType = try container.decode(String.self, forKey: .operationType)
        self.vehiclePlate = try container.decode(String.self, forKey: .vehiclePlate)
        self.blockers = try container.decode([String].self, forKey: .blockers)
        self.goods = try container.decode(Int64.self, forKey: .goods)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.waybillId, forKey: .waybillId)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.operationType, forKey: .operationType)
        try container.encode(self.vehiclePlate, forKey: .vehiclePlate)
        try container.encode(self.blockers, forKey: .blockers)
        try container.encode(self.goods, forKey: .goods)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case waybillId
        case fileId
        case fileName
        case xml
        case operationType
        case vehiclePlate
        case blockers
        case goods
        case warnings
        case notes
        case source
    }
}