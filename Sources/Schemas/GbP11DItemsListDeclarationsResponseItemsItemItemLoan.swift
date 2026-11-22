import Foundation

public struct GbP11DItemsListDeclarationsResponseItemsItemItemLoan: Codable, Hashable, Sendable {
    public let jointBorrowers: Int64
    public let outstandingStart: String
    public let outstandingEnd: String
    public let maximumOutstanding: String
    public let interestPaid: String
    public let madeOn: CalendarDate?
    public let dischargedOn: CalendarDate?
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        jointBorrowers: Int64,
        outstandingStart: String,
        outstandingEnd: String,
        maximumOutstanding: String,
        interestPaid: String,
        madeOn: CalendarDate? = nil,
        dischargedOn: CalendarDate? = nil,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.jointBorrowers = jointBorrowers
        self.outstandingStart = outstandingStart
        self.outstandingEnd = outstandingEnd
        self.maximumOutstanding = maximumOutstanding
        self.interestPaid = interestPaid
        self.madeOn = madeOn
        self.dischargedOn = dischargedOn
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.jointBorrowers = try container.decode(Int64.self, forKey: .jointBorrowers)
        self.outstandingStart = try container.decode(String.self, forKey: .outstandingStart)
        self.outstandingEnd = try container.decode(String.self, forKey: .outstandingEnd)
        self.maximumOutstanding = try container.decode(String.self, forKey: .maximumOutstanding)
        self.interestPaid = try container.decode(String.self, forKey: .interestPaid)
        self.madeOn = try container.decodeIfPresent(CalendarDate.self, forKey: .madeOn)
        self.dischargedOn = try container.decodeIfPresent(CalendarDate.self, forKey: .dischargedOn)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.jointBorrowers, forKey: .jointBorrowers)
        try container.encode(self.outstandingStart, forKey: .outstandingStart)
        try container.encode(self.outstandingEnd, forKey: .outstandingEnd)
        try container.encode(self.maximumOutstanding, forKey: .maximumOutstanding)
        try container.encode(self.interestPaid, forKey: .interestPaid)
        try container.encodeIfPresent(self.madeOn, forKey: .madeOn)
        try container.encodeIfPresent(self.dischargedOn, forKey: .dischargedOn)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case jointBorrowers
        case outstandingStart
        case outstandingEnd
        case maximumOutstanding
        case interestPaid
        case madeOn
        case dischargedOn
        case amount
    }
}