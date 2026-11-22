import Foundation

public struct UsDeUnemploymentGetDeclarationsResponseUc8: Codable, Hashable, Sendable {
    public let reportingPeriod: String
    public let accountNo: Nullable<String>
    public let federalIdNumber: Nullable<String>
    public let taxRate: Nullable<String>
    public let line1: [Double]
    public let line2: String
    public let line3: String
    public let line4: String
    public let line5: String
    public let line6: Nullable<String>
    public let line7: String
    public let line8: Nullable<String>
    public let line9: Nullable<String>
    public let line10: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        reportingPeriod: String,
        accountNo: Nullable<String>,
        federalIdNumber: Nullable<String>,
        taxRate: Nullable<String>,
        line1: [Double],
        line2: String,
        line3: String,
        line4: String,
        line5: String,
        line6: Nullable<String>,
        line7: String,
        line8: Nullable<String>,
        line9: Nullable<String>,
        line10: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.reportingPeriod = reportingPeriod
        self.accountNo = accountNo
        self.federalIdNumber = federalIdNumber
        self.taxRate = taxRate
        self.line1 = line1
        self.line2 = line2
        self.line3 = line3
        self.line4 = line4
        self.line5 = line5
        self.line6 = line6
        self.line7 = line7
        self.line8 = line8
        self.line9 = line9
        self.line10 = line10
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.reportingPeriod = try container.decode(String.self, forKey: .reportingPeriod)
        self.accountNo = try container.decode(Nullable<String>.self, forKey: .accountNo)
        self.federalIdNumber = try container.decode(Nullable<String>.self, forKey: .federalIdNumber)
        self.taxRate = try container.decode(Nullable<String>.self, forKey: .taxRate)
        self.line1 = try container.decode([Double].self, forKey: .line1)
        self.line2 = try container.decode(String.self, forKey: .line2)
        self.line3 = try container.decode(String.self, forKey: .line3)
        self.line4 = try container.decode(String.self, forKey: .line4)
        self.line5 = try container.decode(String.self, forKey: .line5)
        self.line6 = try container.decode(Nullable<String>.self, forKey: .line6)
        self.line7 = try container.decode(String.self, forKey: .line7)
        self.line8 = try container.decode(Nullable<String>.self, forKey: .line8)
        self.line9 = try container.decode(Nullable<String>.self, forKey: .line9)
        self.line10 = try container.decode(String.self, forKey: .line10)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.reportingPeriod, forKey: .reportingPeriod)
        try container.encode(self.accountNo, forKey: .accountNo)
        try container.encode(self.federalIdNumber, forKey: .federalIdNumber)
        try container.encode(self.taxRate, forKey: .taxRate)
        try container.encode(self.line1, forKey: .line1)
        try container.encode(self.line2, forKey: .line2)
        try container.encode(self.line3, forKey: .line3)
        try container.encode(self.line4, forKey: .line4)
        try container.encode(self.line5, forKey: .line5)
        try container.encode(self.line6, forKey: .line6)
        try container.encode(self.line7, forKey: .line7)
        try container.encode(self.line8, forKey: .line8)
        try container.encode(self.line9, forKey: .line9)
        try container.encode(self.line10, forKey: .line10)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case reportingPeriod
        case accountNo
        case federalIdNumber
        case taxRate
        case line1
        case line2
        case line3
        case line4
        case line5
        case line6
        case line7
        case line8
        case line9
        case line10
    }
}