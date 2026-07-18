import Foundation

public struct PostV1SalesRecognitionModifyResponse: Codable, Hashable, Sendable {
    public let invoiceLineId: String
    public let approach: PostV1SalesRecognitionModifyResponseApproach
    public let cancelledCount: Int64
    public let newPendingCount: Int64
    public let catchUpAmount: String
    public let journalTransactionId: Nullable<String>
    public let newEndDate: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceLineId: String,
        approach: PostV1SalesRecognitionModifyResponseApproach,
        cancelledCount: Int64,
        newPendingCount: Int64,
        catchUpAmount: String,
        journalTransactionId: Nullable<String>,
        newEndDate: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceLineId = invoiceLineId
        self.approach = approach
        self.cancelledCount = cancelledCount
        self.newPendingCount = newPendingCount
        self.catchUpAmount = catchUpAmount
        self.journalTransactionId = journalTransactionId
        self.newEndDate = newEndDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceLineId = try container.decode(String.self, forKey: .invoiceLineId)
        self.approach = try container.decode(PostV1SalesRecognitionModifyResponseApproach.self, forKey: .approach)
        self.cancelledCount = try container.decode(Int64.self, forKey: .cancelledCount)
        self.newPendingCount = try container.decode(Int64.self, forKey: .newPendingCount)
        self.catchUpAmount = try container.decode(String.self, forKey: .catchUpAmount)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.newEndDate = try container.decode(Nullable<String>.self, forKey: .newEndDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceLineId, forKey: .invoiceLineId)
        try container.encode(self.approach, forKey: .approach)
        try container.encode(self.cancelledCount, forKey: .cancelledCount)
        try container.encode(self.newPendingCount, forKey: .newPendingCount)
        try container.encode(self.catchUpAmount, forKey: .catchUpAmount)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.newEndDate, forKey: .newEndDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceLineId
        case approach
        case cancelledCount
        case newPendingCount
        case catchUpAmount
        case journalTransactionId
        case newEndDate
    }
}