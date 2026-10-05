import Foundation

public struct ImportTemplatesListBankResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let type: ImportTemplatesListBankResponseRowsItemType
    public let fields: [ImportTemplatesListBankResponseRowsItemFieldsItem]
    public let metaFields: [String]
    public let invoiceMetaField: Nullable<String>
    public let invoiceVatRatePercent: Nullable<String>
    public let companyMetaField: Nullable<String>
    public let invoiceItemId: Nullable<String>
    public let advanceInvoices: Bool
    public let authorizationOperationTypeId: Nullable<String>
    public let payoutOperationTypeId: Nullable<String>
    public let commissionOperationTypeId: Nullable<String>
    public let lenderMetaField: Nullable<String>
    public let partialRefundLabel: Nullable<String>
    public let fullRefundLabel: Nullable<String>
    public let createdAt: Date
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        type: ImportTemplatesListBankResponseRowsItemType,
        fields: [ImportTemplatesListBankResponseRowsItemFieldsItem],
        metaFields: [String],
        invoiceMetaField: Nullable<String>,
        invoiceVatRatePercent: Nullable<String>,
        companyMetaField: Nullable<String>,
        invoiceItemId: Nullable<String>,
        advanceInvoices: Bool,
        authorizationOperationTypeId: Nullable<String>,
        payoutOperationTypeId: Nullable<String>,
        commissionOperationTypeId: Nullable<String>,
        lenderMetaField: Nullable<String>,
        partialRefundLabel: Nullable<String>,
        fullRefundLabel: Nullable<String>,
        createdAt: Date,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.type = type
        self.fields = fields
        self.metaFields = metaFields
        self.invoiceMetaField = invoiceMetaField
        self.invoiceVatRatePercent = invoiceVatRatePercent
        self.companyMetaField = companyMetaField
        self.invoiceItemId = invoiceItemId
        self.advanceInvoices = advanceInvoices
        self.authorizationOperationTypeId = authorizationOperationTypeId
        self.payoutOperationTypeId = payoutOperationTypeId
        self.commissionOperationTypeId = commissionOperationTypeId
        self.lenderMetaField = lenderMetaField
        self.partialRefundLabel = partialRefundLabel
        self.fullRefundLabel = fullRefundLabel
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.type = try container.decode(ImportTemplatesListBankResponseRowsItemType.self, forKey: .type)
        self.fields = try container.decode([ImportTemplatesListBankResponseRowsItemFieldsItem].self, forKey: .fields)
        self.metaFields = try container.decode([String].self, forKey: .metaFields)
        self.invoiceMetaField = try container.decode(Nullable<String>.self, forKey: .invoiceMetaField)
        self.invoiceVatRatePercent = try container.decode(Nullable<String>.self, forKey: .invoiceVatRatePercent)
        self.companyMetaField = try container.decode(Nullable<String>.self, forKey: .companyMetaField)
        self.invoiceItemId = try container.decode(Nullable<String>.self, forKey: .invoiceItemId)
        self.advanceInvoices = try container.decode(Bool.self, forKey: .advanceInvoices)
        self.authorizationOperationTypeId = try container.decode(Nullable<String>.self, forKey: .authorizationOperationTypeId)
        self.payoutOperationTypeId = try container.decode(Nullable<String>.self, forKey: .payoutOperationTypeId)
        self.commissionOperationTypeId = try container.decode(Nullable<String>.self, forKey: .commissionOperationTypeId)
        self.lenderMetaField = try container.decode(Nullable<String>.self, forKey: .lenderMetaField)
        self.partialRefundLabel = try container.decode(Nullable<String>.self, forKey: .partialRefundLabel)
        self.fullRefundLabel = try container.decode(Nullable<String>.self, forKey: .fullRefundLabel)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.fields, forKey: .fields)
        try container.encode(self.metaFields, forKey: .metaFields)
        try container.encode(self.invoiceMetaField, forKey: .invoiceMetaField)
        try container.encode(self.invoiceVatRatePercent, forKey: .invoiceVatRatePercent)
        try container.encode(self.companyMetaField, forKey: .companyMetaField)
        try container.encode(self.invoiceItemId, forKey: .invoiceItemId)
        try container.encode(self.advanceInvoices, forKey: .advanceInvoices)
        try container.encode(self.authorizationOperationTypeId, forKey: .authorizationOperationTypeId)
        try container.encode(self.payoutOperationTypeId, forKey: .payoutOperationTypeId)
        try container.encode(self.commissionOperationTypeId, forKey: .commissionOperationTypeId)
        try container.encode(self.lenderMetaField, forKey: .lenderMetaField)
        try container.encode(self.partialRefundLabel, forKey: .partialRefundLabel)
        try container.encode(self.fullRefundLabel, forKey: .fullRefundLabel)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case type
        case fields
        case metaFields
        case invoiceMetaField
        case invoiceVatRatePercent
        case companyMetaField
        case invoiceItemId
        case advanceInvoices
        case authorizationOperationTypeId
        case payoutOperationTypeId
        case commissionOperationTypeId
        case lenderMetaField
        case partialRefundLabel
        case fullRefundLabel
        case createdAt
        case updatedAt
    }
}