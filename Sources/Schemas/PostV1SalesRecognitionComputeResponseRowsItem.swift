import Foundation

public struct PostV1SalesRecognitionComputeResponseRowsItem: Codable, Hashable, Sendable {
    public let scheduleId: String
    public let invoiceId: String
    public let invoiceFullNumber: Nullable<String>
    public let invoiceLineId: String
    public let lineDescription: String
    public let scheduleDate: Nullable<String>
    public let description: Nullable<String>
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        scheduleId: String,
        invoiceId: String,
        invoiceFullNumber: Nullable<String>,
        invoiceLineId: String,
        lineDescription: String,
        scheduleDate: Nullable<String>,
        description: Nullable<String>,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.scheduleId = scheduleId
        self.invoiceId = invoiceId
        self.invoiceFullNumber = invoiceFullNumber
        self.invoiceLineId = invoiceLineId
        self.lineDescription = lineDescription
        self.scheduleDate = scheduleDate
        self.description = description
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.scheduleId = try container.decode(String.self, forKey: .scheduleId)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.invoiceFullNumber = try container.decode(Nullable<String>.self, forKey: .invoiceFullNumber)
        self.invoiceLineId = try container.decode(String.self, forKey: .invoiceLineId)
        self.lineDescription = try container.decode(String.self, forKey: .lineDescription)
        self.scheduleDate = try container.decode(Nullable<String>.self, forKey: .scheduleDate)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.scheduleId, forKey: .scheduleId)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.invoiceFullNumber, forKey: .invoiceFullNumber)
        try container.encode(self.invoiceLineId, forKey: .invoiceLineId)
        try container.encode(self.lineDescription, forKey: .lineDescription)
        try container.encode(self.scheduleDate, forKey: .scheduleDate)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case scheduleId
        case invoiceId
        case invoiceFullNumber
        case invoiceLineId
        case lineDescription
        case scheduleDate
        case description
        case amount
    }
}