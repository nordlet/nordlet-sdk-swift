import Foundation

public struct PostV1MigrationBooksImportResponseOpenPayables: Codable, Hashable, Sendable {
    public let created: Int64
    public let outstandingTotal: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        created: Int64,
        outstandingTotal: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.created = created
        self.outstandingTotal = outstandingTotal
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.created = try container.decode(Int64.self, forKey: .created)
        self.outstandingTotal = try container.decode(String.self, forKey: .outstandingTotal)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.created, forKey: .created)
        try container.encode(self.outstandingTotal, forKey: .outstandingTotal)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case created
        case outstandingTotal
    }
}