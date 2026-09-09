import Foundation

extension Requests {
    public struct PostV1BankImportTemplatesUpdateRequest: Codable, Hashable, Sendable {
        public let name: String?
        public let type: PostV1BankImportTemplatesUpdateRequestType?
        public let fields: [PostV1BankImportTemplatesUpdateRequestFieldsItem]?
        public let metaFields: [String]?
        public let invoiceMetaField: Nullable<String>?
        public let invoiceVatRatePercent: Nullable<String>?
        public let companyMetaField: Nullable<String>?
        public let invoiceItemId: Nullable<String>?
        public let advanceInvoices: Bool?
        public let authorizationOperationTypeId: Nullable<String>?
        public let payoutOperationTypeId: Nullable<String>?
        public let commissionOperationTypeId: Nullable<String>?
        public let lenderMetaField: Nullable<String>?
        public let partialRefundLabel: Nullable<String>?
        public let fullRefundLabel: Nullable<String>?
        public let id: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            type: PostV1BankImportTemplatesUpdateRequestType? = nil,
            fields: [PostV1BankImportTemplatesUpdateRequestFieldsItem]? = nil,
            metaFields: [String]? = nil,
            invoiceMetaField: Nullable<String>? = nil,
            invoiceVatRatePercent: Nullable<String>? = nil,
            companyMetaField: Nullable<String>? = nil,
            invoiceItemId: Nullable<String>? = nil,
            advanceInvoices: Bool? = nil,
            authorizationOperationTypeId: Nullable<String>? = nil,
            payoutOperationTypeId: Nullable<String>? = nil,
            commissionOperationTypeId: Nullable<String>? = nil,
            lenderMetaField: Nullable<String>? = nil,
            partialRefundLabel: Nullable<String>? = nil,
            fullRefundLabel: Nullable<String>? = nil,
            id: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
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
            self.id = id
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.type = try container.decodeIfPresent(PostV1BankImportTemplatesUpdateRequestType.self, forKey: .type)
            self.fields = try container.decodeIfPresent([PostV1BankImportTemplatesUpdateRequestFieldsItem].self, forKey: .fields)
            self.metaFields = try container.decodeIfPresent([String].self, forKey: .metaFields)
            self.invoiceMetaField = try container.decodeNullableIfPresent(String.self, forKey: .invoiceMetaField)
            self.invoiceVatRatePercent = try container.decodeNullableIfPresent(String.self, forKey: .invoiceVatRatePercent)
            self.companyMetaField = try container.decodeNullableIfPresent(String.self, forKey: .companyMetaField)
            self.invoiceItemId = try container.decodeNullableIfPresent(String.self, forKey: .invoiceItemId)
            self.advanceInvoices = try container.decodeIfPresent(Bool.self, forKey: .advanceInvoices)
            self.authorizationOperationTypeId = try container.decodeNullableIfPresent(String.self, forKey: .authorizationOperationTypeId)
            self.payoutOperationTypeId = try container.decodeNullableIfPresent(String.self, forKey: .payoutOperationTypeId)
            self.commissionOperationTypeId = try container.decodeNullableIfPresent(String.self, forKey: .commissionOperationTypeId)
            self.lenderMetaField = try container.decodeNullableIfPresent(String.self, forKey: .lenderMetaField)
            self.partialRefundLabel = try container.decodeNullableIfPresent(String.self, forKey: .partialRefundLabel)
            self.fullRefundLabel = try container.decodeNullableIfPresent(String.self, forKey: .fullRefundLabel)
            self.id = try container.decode(String.self, forKey: .id)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.fields, forKey: .fields)
            try container.encodeIfPresent(self.metaFields, forKey: .metaFields)
            try container.encodeNullableIfPresent(self.invoiceMetaField, forKey: .invoiceMetaField)
            try container.encodeNullableIfPresent(self.invoiceVatRatePercent, forKey: .invoiceVatRatePercent)
            try container.encodeNullableIfPresent(self.companyMetaField, forKey: .companyMetaField)
            try container.encodeNullableIfPresent(self.invoiceItemId, forKey: .invoiceItemId)
            try container.encodeIfPresent(self.advanceInvoices, forKey: .advanceInvoices)
            try container.encodeNullableIfPresent(self.authorizationOperationTypeId, forKey: .authorizationOperationTypeId)
            try container.encodeNullableIfPresent(self.payoutOperationTypeId, forKey: .payoutOperationTypeId)
            try container.encodeNullableIfPresent(self.commissionOperationTypeId, forKey: .commissionOperationTypeId)
            try container.encodeNullableIfPresent(self.lenderMetaField, forKey: .lenderMetaField)
            try container.encodeNullableIfPresent(self.partialRefundLabel, forKey: .partialRefundLabel)
            try container.encodeNullableIfPresent(self.fullRefundLabel, forKey: .fullRefundLabel)
            try container.encode(self.id, forKey: .id)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
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
            case id
        }
    }
}