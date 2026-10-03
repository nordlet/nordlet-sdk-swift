import Foundation

public struct PostV1DeclarationsPlKsefReceivedFetchResponse: Codable, Hashable, Sendable {
    public let ksefNumber: String
    public let xml: String
    public let attachedTo: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ksefNumber: String,
        xml: String,
        attachedTo: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ksefNumber = ksefNumber
        self.xml = xml
        self.attachedTo = attachedTo
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ksefNumber = try container.decode(String.self, forKey: .ksefNumber)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.attachedTo = try container.decode(Nullable<String>.self, forKey: .attachedTo)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ksefNumber, forKey: .ksefNumber)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.attachedTo, forKey: .attachedTo)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ksefNumber
        case xml
        case attachedTo
    }
}