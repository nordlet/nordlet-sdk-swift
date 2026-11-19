import Foundation

public struct FrequenciesListPayrollResponse: Codable, Hashable, Sendable {
    public let countryCode: String
    public let frequencies: [FrequenciesListPayrollResponseFrequenciesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        frequencies: [FrequenciesListPayrollResponseFrequenciesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.frequencies = frequencies
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.frequencies = try container.decode([FrequenciesListPayrollResponseFrequenciesItem].self, forKey: .frequencies)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.frequencies, forKey: .frequencies)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case frequencies
    }
}