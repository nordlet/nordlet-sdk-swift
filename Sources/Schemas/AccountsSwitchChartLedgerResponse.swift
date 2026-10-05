import Foundation

public struct AccountsSwitchChartLedgerResponse: Codable, Hashable, Sendable {
    public let chartTemplate: String
    public let accounts: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chartTemplate: String,
        accounts: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chartTemplate = chartTemplate
        self.accounts = accounts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chartTemplate = try container.decode(String.self, forKey: .chartTemplate)
        self.accounts = try container.decode(Int64.self, forKey: .accounts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chartTemplate, forKey: .chartTemplate)
        try container.encode(self.accounts, forKey: .accounts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chartTemplate
        case accounts
    }
}