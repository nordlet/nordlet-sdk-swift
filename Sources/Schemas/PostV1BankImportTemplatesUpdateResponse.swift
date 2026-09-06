import Foundation

public struct PostV1BankImportTemplatesUpdateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let type: PostV1BankImportTemplatesUpdateResponseType
    public let fields: [PostV1BankImportTemplatesUpdateResponseFieldsItem]
    public let metaFields: [String]
    public let invoiceMetaField: Nullable<String>
    public let invoiceVatRatePercent: Nullable<String>
    public let companyMetaField: Nullable<String>
    public let invoiceItemId: Nullable<String>
    public let advanceInvoices: Bool
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        type: PostV1BankImportTemplatesUpdateResponseType,
        fields: [PostV1BankImportTemplatesUpdateResponseFieldsItem],
        metaFields: [String],
        invoiceMetaField: Nullable<String>,
        invoiceVatRatePercent: Nullable<String>,
        companyMetaField: Nullable<String>,
        invoiceItemId: Nullable<String>,
        advanceInvoices: Bool,
        createdAt: String,
        updatedAt: String,
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
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.type = try container.decode(PostV1BankImportTemplatesUpdateResponseType.self, forKey: .type)
        self.fields = try container.decode([PostV1BankImportTemplatesUpdateResponseFieldsItem].self, forKey: .fields)
        self.metaFields = try container.decode([String].self, forKey: .metaFields)
        self.invoiceMetaField = try container.decode(Nullable<String>.self, forKey: .invoiceMetaField)
        self.invoiceVatRatePercent = try container.decode(Nullable<String>.self, forKey: .invoiceVatRatePercent)
        self.companyMetaField = try container.decode(Nullable<String>.self, forKey: .companyMetaField)
        self.invoiceItemId = try container.decode(Nullable<String>.self, forKey: .invoiceItemId)
        self.advanceInvoices = try container.decode(Bool.self, forKey: .advanceInvoices)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
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
        case createdAt
        case updatedAt
    }
}