import Foundation

public struct UsW2ListDeclarationsResponseFormsItemStatesItemBox15: Codable, Hashable, Sendable {
    public let state: String
    public let employerStateId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        state: String,
        employerStateId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.state = state
        self.employerStateId = employerStateId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.state = try container.decode(String.self, forKey: .state)
        self.employerStateId = try container.decode(Nullable<String>.self, forKey: .employerStateId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.employerStateId, forKey: .employerStateId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case state
        case employerStateId
    }
}