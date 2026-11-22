import Foundation

public struct UsDeWithholdingReconciliationGetDeclarationsResponseWorksheetItem: Codable, Hashable, Sendable {
    public let month: Double
    public let taxPaid: Nullable<String>
    public let taxWithheld: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        month: Double,
        taxPaid: Nullable<String>,
        taxWithheld: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.month = month
        self.taxPaid = taxPaid
        self.taxWithheld = taxWithheld
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.month = try container.decode(Double.self, forKey: .month)
        self.taxPaid = try container.decode(Nullable<String>.self, forKey: .taxPaid)
        self.taxWithheld = try container.decode(String.self, forKey: .taxWithheld)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.taxPaid, forKey: .taxPaid)
        try container.encode(self.taxWithheld, forKey: .taxWithheld)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case month
        case taxPaid
        case taxWithheld
    }
}