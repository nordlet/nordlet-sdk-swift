import Foundation

public struct PostV1ReportsCashFlowResponseOperating: Codable, Hashable, Sendable {
    public let inflow: String
    public let outflow: String
    public let net: String
    public let rows: [PostV1ReportsCashFlowResponseOperatingRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        inflow: String,
        outflow: String,
        net: String,
        rows: [PostV1ReportsCashFlowResponseOperatingRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.inflow = inflow
        self.outflow = outflow
        self.net = net
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.inflow = try container.decode(String.self, forKey: .inflow)
        self.outflow = try container.decode(String.self, forKey: .outflow)
        self.net = try container.decode(String.self, forKey: .net)
        self.rows = try container.decode([PostV1ReportsCashFlowResponseOperatingRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.inflow, forKey: .inflow)
        try container.encode(self.outflow, forKey: .outflow)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case inflow
        case outflow
        case net
        case rows
    }
}