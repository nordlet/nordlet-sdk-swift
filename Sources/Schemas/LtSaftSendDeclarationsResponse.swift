import Foundation

public struct LtSaftSendDeclarationsResponse: Codable, Hashable, Sendable {
    public let submissionId: String
    public let caseId: String
    public let state: LtSaftSendDeclarationsResponseState
    public let detail: Nullable<String>
    public let fileName: String
    public let confirmed: Bool
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        submissionId: String,
        caseId: String,
        state: LtSaftSendDeclarationsResponseState,
        detail: Nullable<String>,
        fileName: String,
        confirmed: Bool,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.submissionId = submissionId
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
        self.submissionId = try container.decode(String.self, forKey: .submissionId)
        self.caseId = try container.decode(String.self, forKey: .caseId)
        self.state = try container.decode(LtSaftSendDeclarationsResponseState.self, forKey: .state)
        self.detail = try container.decode(Nullable<String>.self, forKey: .detail)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.confirmed = try container.decode(Bool.self, forKey: .confirmed)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.submissionId, forKey: .submissionId)
        try container.encode(self.caseId, forKey: .caseId)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.detail, forKey: .detail)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.confirmed, forKey: .confirmed)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case submissionId
        case caseId
        case state
        case detail
        case fileName
        case confirmed
        case warnings
    }
}