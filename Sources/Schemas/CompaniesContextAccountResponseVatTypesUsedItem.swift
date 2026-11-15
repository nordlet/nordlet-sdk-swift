import Foundation

public struct CompaniesContextAccountResponseVatTypesUsedItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: Nullable<String>
    public let ratePercent: Nullable<String>
    public let saleLines: Int64
    public let purchaseLines: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: Nullable<String>,
        ratePercent: Nullable<String>,
        saleLines: Int64,
        purchaseLines: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.ratePercent = ratePercent
        self.saleLines = saleLines
        self.purchaseLines = purchaseLines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(Nullable<String>.self, forKey: .name)
        self.ratePercent = try container.decode(Nullable<String>.self, forKey: .ratePercent)
        self.saleLines = try container.decode(Int64.self, forKey: .saleLines)
        self.purchaseLines = try container.decode(Int64.self, forKey: .purchaseLines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.ratePercent, forKey: .ratePercent)
        try container.encode(self.saleLines, forKey: .saleLines)
        try container.encode(self.purchaseLines, forKey: .purchaseLines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case ratePercent
        case saleLines
        case purchaseLines
    }
}