import Foundation

public struct PostV1DeclarationsEeEmploymentRegisterSendResponse: Codable, Hashable, Sendable {
    public let reference: String
    public let state: PostV1DeclarationsEeEmploymentRegisterSendResponseState
    public let detail: Nullable<String>
    public let fileName: String
    public let entryDate: String
    public let xml: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        reference: String,
        state: PostV1DeclarationsEeEmploymentRegisterSendResponseState,
        detail: Nullable<String>,
        fileName: String,
        entryDate: String,
        xml: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.reference = reference
        self.state = state
        self.detail = detail
        self.fileName = fileName
        self.entryDate = entryDate
        self.xml = xml
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.reference = try container.decode(String.self, forKey: .reference)
        self.state = try container.decode(PostV1DeclarationsEeEmploymentRegisterSendResponseState.self, forKey: .state)
        self.detail = try container.decode(Nullable<String>.self, forKey: .detail)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.entryDate = try container.decode(String.self, forKey: .entryDate)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.reference, forKey: .reference)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.detail, forKey: .detail)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.entryDate, forKey: .entryDate)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case reference
        case state
        case detail
        case fileName
        case entryDate
        case xml
        case warnings
    }
}