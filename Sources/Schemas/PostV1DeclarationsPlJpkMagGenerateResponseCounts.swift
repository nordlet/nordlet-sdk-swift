import Foundation

public struct PostV1DeclarationsPlJpkMagGenerateResponseCounts: Codable, Hashable, Sendable {
    public let pz: Int64
    public let pw: Int64
    public let wz: Int64
    public let rw: Int64
    public let rows: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        pz: Int64,
        pw: Int64,
        wz: Int64,
        rw: Int64,
        rows: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.pz = pz
        self.pw = pw
        self.wz = wz
        self.rw = rw
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pz = try container.decode(Int64.self, forKey: .pz)
        self.pw = try container.decode(Int64.self, forKey: .pw)
        self.wz = try container.decode(Int64.self, forKey: .wz)
        self.rw = try container.decode(Int64.self, forKey: .rw)
        self.rows = try container.decode(Int64.self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.pz, forKey: .pz)
        try container.encode(self.pw, forKey: .pw)
        try container.encode(self.wz, forKey: .wz)
        try container.encode(self.rw, forKey: .rw)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case pz
        case pw
        case wz
        case rw
        case rows
    }
}