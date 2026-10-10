import Foundation

public struct EuDac7PreviewDeclarationsResponseSellersItem: Codable, Hashable, Sendable {
    public let sellerId: String
    public let name: String
    public let reportable: Bool
    public let reason: Nullable<String>
    public let consideration: String
    public let activities: Int64
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sellerId: String,
        name: String,
        reportable: Bool,
        reason: Nullable<String>,
        consideration: String,
        activities: Int64,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sellerId = sellerId
        self.name = name
        self.reportable = reportable
        self.reason = reason
        self.consideration = consideration
        self.activities = activities
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sellerId = try container.decode(String.self, forKey: .sellerId)
        self.name = try container.decode(String.self, forKey: .name)
        self.reportable = try container.decode(Bool.self, forKey: .reportable)
        self.reason = try container.decode(Nullable<String>.self, forKey: .reason)
        self.consideration = try container.decode(String.self, forKey: .consideration)
        self.activities = try container.decode(Int64.self, forKey: .activities)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sellerId, forKey: .sellerId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.reportable, forKey: .reportable)
        try container.encode(self.reason, forKey: .reason)
        try container.encode(self.consideration, forKey: .consideration)
        try container.encode(self.activities, forKey: .activities)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sellerId
        case name
        case reportable
        case reason
        case consideration
        case activities
        case warnings
    }
}