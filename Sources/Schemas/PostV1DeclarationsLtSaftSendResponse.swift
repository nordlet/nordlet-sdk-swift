import Foundation

public struct PostV1DeclarationsLtSaftSendResponse: Codable, Hashable, Sendable {
    public let caseId: String
    public let state: PostV1DeclarationsLtSaftSendResponseState
    public let detail: Nullable<String>
    public let fileName: String
    public let confirmed: Bool
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        caseId: String,
        state: PostV1DeclarationsLtSaftSendResponseState,
        detail: Nullable<String>,
        fileName: String,
        confirmed: Bool,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.caseId = caseId
        self.state = state
        self.detail = detail
        self.fileName = fileName
        self.confirmed = confirmed
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.caseId = try container.decode(String.self, forKey: .caseId)
        self.state = try container.decode(PostV1DeclarationsLtSaftSendResponseState.self, forKey: .state)
        self.detail = try container.decode(Nullable<String>.self, forKey: .detail)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.confirmed = try container.decode(Bool.self, forKey: .confirmed)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.caseId, forKey: .caseId)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.detail, forKey: .detail)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.confirmed, forKey: .confirmed)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case caseId
        case state
        case detail
        case fileName
        case confirmed
        case warnings
    }
}