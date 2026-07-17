import Foundation

public struct ErrorResponseError: Codable, Hashable, Sendable {
    public let code: ErrorResponseErrorCode
    public let message: String
    public let requestId: String
    public let fieldErrors: [String: [String]]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: ErrorResponseErrorCode,
        message: String,
        requestId: String,
        fieldErrors: [String: [String]]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.message = message
        self.requestId = requestId
        self.fieldErrors = fieldErrors
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(ErrorResponseErrorCode.self, forKey: .code)
        self.message = try container.decode(String.self, forKey: .message)
        self.requestId = try container.decode(String.self, forKey: .requestId)
        self.fieldErrors = try container.decodeIfPresent([String: [String]].self, forKey: .fieldErrors)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.requestId, forKey: .requestId)
        try container.encodeIfPresent(self.fieldErrors, forKey: .fieldErrors)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case message
        case requestId
        case fieldErrors
    }
}