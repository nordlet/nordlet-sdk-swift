import Foundation

public struct UsStateSalesGetDeclarationsResponse: Codable, Hashable, Sendable {
    public let from: String
    public let to: String
    public let states: [UsStateSalesGetDeclarationsResponseStatesItem]
    public let withoutState: UsStateSalesGetDeclarationsResponseWithoutState
    public let outsideUs: UsStateSalesGetDeclarationsResponseOutsideUs
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        from: String,
        to: String,
        states: [UsStateSalesGetDeclarationsResponseStatesItem],
        withoutState: UsStateSalesGetDeclarationsResponseWithoutState,
        outsideUs: UsStateSalesGetDeclarationsResponseOutsideUs,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.from = from
        self.to = to
        self.states = states
        self.withoutState = withoutState
        self.outsideUs = outsideUs
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.from = try container.decode(String.self, forKey: .from)
        self.to = try container.decode(String.self, forKey: .to)
        self.states = try container.decode([UsStateSalesGetDeclarationsResponseStatesItem].self, forKey: .states)
        self.withoutState = try container.decode(UsStateSalesGetDeclarationsResponseWithoutState.self, forKey: .withoutState)
        self.outsideUs = try container.decode(UsStateSalesGetDeclarationsResponseOutsideUs.self, forKey: .outsideUs)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.from, forKey: .from)
        try container.encode(self.to, forKey: .to)
        try container.encode(self.states, forKey: .states)
        try container.encode(self.withoutState, forKey: .withoutState)
        try container.encode(self.outsideUs, forKey: .outsideUs)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case to
        case states
        case withoutState
        case outsideUs
        case warnings
    }
}