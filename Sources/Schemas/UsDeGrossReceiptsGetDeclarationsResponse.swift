import Foundation

public struct UsDeGrossReceiptsGetDeclarationsResponse: Codable, Hashable, Sendable {
    public let from: String
    public let to: String
    public let activity: String
    public let grossReceipts: String
    public let excludedReceipts: String
    public let deduction: String
    public let taxableReceipts: String
    public let rate: String
    public let tax: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        from: String,
        to: String,
        activity: String,
        grossReceipts: String,
        excludedReceipts: String,
        deduction: String,
        taxableReceipts: String,
        rate: String,
        tax: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.from = from
        self.to = to
        self.activity = activity
        self.grossReceipts = grossReceipts
        self.excludedReceipts = excludedReceipts
        self.deduction = deduction
        self.taxableReceipts = taxableReceipts
        self.rate = rate
        self.tax = tax
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.from = try container.decode(String.self, forKey: .from)
        self.to = try container.decode(String.self, forKey: .to)
        self.activity = try container.decode(String.self, forKey: .activity)
        self.grossReceipts = try container.decode(String.self, forKey: .grossReceipts)
        self.excludedReceipts = try container.decode(String.self, forKey: .excludedReceipts)
        self.deduction = try container.decode(String.self, forKey: .deduction)
        self.taxableReceipts = try container.decode(String.self, forKey: .taxableReceipts)
        self.rate = try container.decode(String.self, forKey: .rate)
        self.tax = try container.decode(String.self, forKey: .tax)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.from, forKey: .from)
        try container.encode(self.to, forKey: .to)
        try container.encode(self.activity, forKey: .activity)
        try container.encode(self.grossReceipts, forKey: .grossReceipts)
        try container.encode(self.excludedReceipts, forKey: .excludedReceipts)
        try container.encode(self.deduction, forKey: .deduction)
        try container.encode(self.taxableReceipts, forKey: .taxableReceipts)
        try container.encode(self.rate, forKey: .rate)
        try container.encode(self.tax, forKey: .tax)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case to
        case activity
        case grossReceipts
        case excludedReceipts
        case deduction
        case taxableReceipts
        case rate
        case tax
        case warnings
    }
}