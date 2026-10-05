import Foundation

public struct RoEtransportSubmitDeclarationsResponse: Codable, Hashable, Sendable {
    public let waybillId: String
    public let reference: String
    public let state: RoEtransportSubmitDeclarationsResponseState
    public let uit: Nullable<String>
    public let detail: Nullable<String>
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        waybillId: String,
        reference: String,
        state: RoEtransportSubmitDeclarationsResponseState,
        uit: Nullable<String>,
        detail: Nullable<String>,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.waybillId = waybillId
        self.reference = reference
        self.state = state
        self.uit = uit
        self.detail = detail
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.waybillId = try container.decode(String.self, forKey: .waybillId)
        self.reference = try container.decode(String.self, forKey: .reference)
        self.state = try container.decode(RoEtransportSubmitDeclarationsResponseState.self, forKey: .state)
        self.uit = try container.decode(Nullable<String>.self, forKey: .uit)
        self.detail = try container.decode(Nullable<String>.self, forKey: .detail)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.waybillId, forKey: .waybillId)
        try container.encode(self.reference, forKey: .reference)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.uit, forKey: .uit)
        try container.encode(self.detail, forKey: .detail)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case waybillId
        case reference
        case state
        case uit
        case detail
        case warnings
    }
}