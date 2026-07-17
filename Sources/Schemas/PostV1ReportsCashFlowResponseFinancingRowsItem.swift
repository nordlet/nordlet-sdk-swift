import Foundation

public struct PostV1ReportsCashFlowResponseFinancingRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: String
    public let inflow: String
    public let outflow: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: String,
        inflow: String,
        outflow: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.inflow = inflow
        self.outflow = outflow
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.inflow = try container.decode(String.self, forKey: .inflow)
        self.outflow = try container.decode(String.self, forKey: .outflow)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.inflow, forKey: .inflow)
        try container.encode(self.outflow, forKey: .outflow)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case inflow
        case outflow
    }
}