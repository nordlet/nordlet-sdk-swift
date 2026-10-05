import Foundation

public struct AssetsDisposeAssetsResponse: Codable, Hashable, Sendable {
    public let id: String
    public let groupId: String
    public let code: String
    public let name: String
    public let acquisitionDate: CalendarDate
    public let depreciationStartDate: CalendarDate
    public let acquisitionCost: String
    public let salvageValue: String
    public let usefulLifeMonths: Int64
    public let totalCost: String
    public let accumulatedDepreciation: String
    public let netBookValue: String
    public let depreciatedMonths: Int64
    public let totalLifeMonths: Int64
    public let status: AssetsDisposeAssetsResponseStatus
    public let notes: Nullable<String>
    public let documents: Nullable<[AssetsDisposeAssetsResponseDocumentsItem]>
    public let inputVatAmount: Nullable<String>
    public let inputVatFirstUseDate: Nullable<CalendarDate>
    public let inputVatDeductiblePercent: Nullable<String>
    public let inputVatRealEstate: Bool
    public let inputVatUseChanges: [AssetsDisposeAssetsResponseInputVatUseChangesItem]
    public let disposalDate: Nullable<CalendarDate>
    public let disposalReason: Nullable<AssetsDisposeAssetsResponseDisposalReason>
    public let disposalProceeds: Nullable<String>
    public let disposalJournalTransactionId: Nullable<String>
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        groupId: String,
        code: String,
        name: String,
        acquisitionDate: CalendarDate,
        depreciationStartDate: CalendarDate,
        acquisitionCost: String,
        salvageValue: String,
        usefulLifeMonths: Int64,
        totalCost: String,
        accumulatedDepreciation: String,
        netBookValue: String,
        depreciatedMonths: Int64,
        totalLifeMonths: Int64,
        status: AssetsDisposeAssetsResponseStatus,
        notes: Nullable<String>,
        documents: Nullable<[AssetsDisposeAssetsResponseDocumentsItem]>,
        inputVatAmount: Nullable<String>,
        inputVatFirstUseDate: Nullable<CalendarDate>,
        inputVatDeductiblePercent: Nullable<String>,
        inputVatRealEstate: Bool,
        inputVatUseChanges: [AssetsDisposeAssetsResponseInputVatUseChangesItem],
        disposalDate: Nullable<CalendarDate>,
        disposalReason: Nullable<AssetsDisposeAssetsResponseDisposalReason>,
        disposalProceeds: Nullable<String>,
        disposalJournalTransactionId: Nullable<String>,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.groupId = groupId
        self.code = code
        self.name = name
        self.acquisitionDate = acquisitionDate
        self.depreciationStartDate = depreciationStartDate
        self.acquisitionCost = acquisitionCost
        self.salvageValue = salvageValue
        self.usefulLifeMonths = usefulLifeMonths
        self.totalCost = totalCost
        self.accumulatedDepreciation = accumulatedDepreciation
        self.netBookValue = netBookValue
        self.depreciatedMonths = depreciatedMonths
        self.totalLifeMonths = totalLifeMonths
        self.status = status
        self.notes = notes
        self.documents = documents
        self.inputVatAmount = inputVatAmount
        self.inputVatFirstUseDate = inputVatFirstUseDate
        self.inputVatDeductiblePercent = inputVatDeductiblePercent
        self.inputVatRealEstate = inputVatRealEstate
        self.inputVatUseChanges = inputVatUseChanges
        self.disposalDate = disposalDate
        self.disposalReason = disposalReason
        self.disposalProceeds = disposalProceeds
        self.disposalJournalTransactionId = disposalJournalTransactionId
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.groupId = try container.decode(String.self, forKey: .groupId)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.acquisitionDate = try container.decode(CalendarDate.self, forKey: .acquisitionDate)
        self.depreciationStartDate = try container.decode(CalendarDate.self, forKey: .depreciationStartDate)
        self.acquisitionCost = try container.decode(String.self, forKey: .acquisitionCost)
        self.salvageValue = try container.decode(String.self, forKey: .salvageValue)
        self.usefulLifeMonths = try container.decode(Int64.self, forKey: .usefulLifeMonths)
        self.totalCost = try container.decode(String.self, forKey: .totalCost)
        self.accumulatedDepreciation = try container.decode(String.self, forKey: .accumulatedDepreciation)
        self.netBookValue = try container.decode(String.self, forKey: .netBookValue)
        self.depreciatedMonths = try container.decode(Int64.self, forKey: .depreciatedMonths)
        self.totalLifeMonths = try container.decode(Int64.self, forKey: .totalLifeMonths)
        self.status = try container.decode(AssetsDisposeAssetsResponseStatus.self, forKey: .status)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.documents = try container.decode(Nullable<[AssetsDisposeAssetsResponseDocumentsItem]>.self, forKey: .documents)
        self.inputVatAmount = try container.decode(Nullable<String>.self, forKey: .inputVatAmount)
        self.inputVatFirstUseDate = try container.decode(Nullable<CalendarDate>.self, forKey: .inputVatFirstUseDate)
        self.inputVatDeductiblePercent = try container.decode(Nullable<String>.self, forKey: .inputVatDeductiblePercent)
        self.inputVatRealEstate = try container.decode(Bool.self, forKey: .inputVatRealEstate)
        self.inputVatUseChanges = try container.decode([AssetsDisposeAssetsResponseInputVatUseChangesItem].self, forKey: .inputVatUseChanges)
        self.disposalDate = try container.decode(Nullable<CalendarDate>.self, forKey: .disposalDate)
        self.disposalReason = try container.decode(Nullable<AssetsDisposeAssetsResponseDisposalReason>.self, forKey: .disposalReason)
        self.disposalProceeds = try container.decode(Nullable<String>.self, forKey: .disposalProceeds)
        self.disposalJournalTransactionId = try container.decode(Nullable<String>.self, forKey: .disposalJournalTransactionId)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.groupId, forKey: .groupId)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.acquisitionDate, forKey: .acquisitionDate)
        try container.encode(self.depreciationStartDate, forKey: .depreciationStartDate)
        try container.encode(self.acquisitionCost, forKey: .acquisitionCost)
        try container.encode(self.salvageValue, forKey: .salvageValue)
        try container.encode(self.usefulLifeMonths, forKey: .usefulLifeMonths)
        try container.encode(self.totalCost, forKey: .totalCost)
        try container.encode(self.accumulatedDepreciation, forKey: .accumulatedDepreciation)
        try container.encode(self.netBookValue, forKey: .netBookValue)
        try container.encode(self.depreciatedMonths, forKey: .depreciatedMonths)
        try container.encode(self.totalLifeMonths, forKey: .totalLifeMonths)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.documents, forKey: .documents)
        try container.encode(self.inputVatAmount, forKey: .inputVatAmount)
        try container.encode(self.inputVatFirstUseDate, forKey: .inputVatFirstUseDate)
        try container.encode(self.inputVatDeductiblePercent, forKey: .inputVatDeductiblePercent)
        try container.encode(self.inputVatRealEstate, forKey: .inputVatRealEstate)
        try container.encode(self.inputVatUseChanges, forKey: .inputVatUseChanges)
        try container.encode(self.disposalDate, forKey: .disposalDate)
        try container.encode(self.disposalReason, forKey: .disposalReason)
        try container.encode(self.disposalProceeds, forKey: .disposalProceeds)
        try container.encode(self.disposalJournalTransactionId, forKey: .disposalJournalTransactionId)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case groupId
        case code
        case name
        case acquisitionDate
        case depreciationStartDate
        case acquisitionCost
        case salvageValue
        case usefulLifeMonths
        case totalCost
        case accumulatedDepreciation
        case netBookValue
        case depreciatedMonths
        case totalLifeMonths
        case status
        case notes
        case documents
        case inputVatAmount
        case inputVatFirstUseDate
        case inputVatDeductiblePercent
        case inputVatRealEstate
        case inputVatUseChanges
        case disposalDate
        case disposalReason
        case disposalProceeds
        case disposalJournalTransactionId
        case createdAt
    }
}