import Foundation

public struct PostV1ReportsVatDetailResponseRowsItem: Codable, Hashable, Sendable {
    public let documentId: String
    public let documentNumber: String
    public let date: Nullable<String>
    public let partnerName: String
    public let vatRatePercent: String
    public let net: String
    public let vat: String
    public let gross: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        documentId: String,
        documentNumber: String,
        date: Nullable<String>,
        partnerName: String,
        vatRatePercent: String,
        net: String,
        vat: String,
        gross: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.documentId = documentId
        self.documentNumber = documentNumber
        self.date = date
        self.partnerName = partnerName
        self.vatRatePercent = vatRatePercent
        self.net = net
        self.vat = vat
        self.gross = gross
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.documentId = try container.decode(String.self, forKey: .documentId)
        self.documentNumber = try container.decode(String.self, forKey: .documentNumber)
        self.date = try container.decode(Nullable<String>.self, forKey: .date)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.vatRatePercent = try container.decode(String.self, forKey: .vatRatePercent)
        self.net = try container.decode(String.self, forKey: .net)
        self.vat = try container.decode(String.self, forKey: .vat)
        self.gross = try container.decode(String.self, forKey: .gross)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.documentId, forKey: .documentId)
        try container.encode(self.documentNumber, forKey: .documentNumber)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.vat, forKey: .vat)
        try container.encode(self.gross, forKey: .gross)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case documentId
        case documentNumber
        case date
        case partnerName
        case vatRatePercent
        case net
        case vat
        case gross
    }
}