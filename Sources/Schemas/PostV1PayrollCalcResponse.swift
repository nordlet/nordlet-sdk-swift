import Foundation

public struct PostV1PayrollCalcResponse: Codable, Hashable, Sendable {
    public let npd: String
    public let gpm: String
    public let sodraEmployee: String
    public let sodraEmployer: String
    public let net: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        npd: String,
        gpm: String,
        sodraEmployee: String,
        sodraEmployer: String,
        net: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.npd = npd
        self.gpm = gpm
        self.sodraEmployee = sodraEmployee
        self.sodraEmployer = sodraEmployer
        self.net = net
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.npd = try container.decode(String.self, forKey: .npd)
        self.gpm = try container.decode(String.self, forKey: .gpm)
        self.sodraEmployee = try container.decode(String.self, forKey: .sodraEmployee)
        self.sodraEmployer = try container.decode(String.self, forKey: .sodraEmployer)
        self.net = try container.decode(String.self, forKey: .net)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.npd, forKey: .npd)
        try container.encode(self.gpm, forKey: .gpm)
        try container.encode(self.sodraEmployee, forKey: .sodraEmployee)
        try container.encode(self.sodraEmployer, forKey: .sodraEmployer)
        try container.encode(self.net, forKey: .net)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case npd
        case gpm
        case sodraEmployee
        case sodraEmployer
        case net
    }
}