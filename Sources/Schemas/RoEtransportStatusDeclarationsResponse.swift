import Foundation

public struct RoEtransportStatusDeclarationsResponse: Codable, Hashable, Sendable {
    public let reference: String
    public let state: RoEtransportStatusDeclarationsResponseState
    public let uit: Nullable<String>
    public let detail: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        reference: String,
        state: RoEtransportStatusDeclarationsResponseState,
        uit: Nullable<String>,
        detail: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.reference = reference
        self.state = state
        self.uit = uit
        self.detail = detail
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.reference = try container.decode(String.self, forKey: .reference)
        self.state = try container.decode(RoEtransportStatusDeclarationsResponseState.self, forKey: .state)
        self.uit = try container.decode(Nullable<String>.self, forKey: .uit)
        self.detail = try container.decode(Nullable<String>.self, forKey: .detail)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.reference, forKey: .reference)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.uit, forKey: .uit)
        try container.encode(self.detail, forKey: .detail)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case reference
        case state
        case uit
        case detail
    }
}