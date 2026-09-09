import Foundation

extension Requests {
    public struct PostV1OperationTypesCreateRequest: Codable, Hashable, Sendable {
        public let code: String
        public let name: String
        public let invoiceType: Nullable<PostV1OperationTypesCreateRequestInvoiceType>?
        public let payerPartnerId: Nullable<String>?
        public let debitAccountCode: Nullable<String>?
        public let creditAccountCode: Nullable<String>?
        public let vatAccountCode: Nullable<String>?
        public let expenseAccountCode: Nullable<String>?
        public let advanceAccountCode: Nullable<String>?
        public let incomeAccountCode: Nullable<String>?
        public let isPurchase: Bool?
        public let isSale: Bool?
        public let isWriteOff: Bool?
        public let isInternalMovement: Bool?
        public let isPurchaseReturn: Bool?
        public let isSalesReturn: Bool?
        public let isConsignment: Bool?
        public let isProduction: Bool?
        public let isAssetIn: Bool?
        public let isAssetOut: Bool?
        public let isCashRegisterSale: Bool?
        public let includeInVatRegister: Bool?
        public let includeInSaft: Bool?
        public let isActive: Bool?
        public let sortOrder: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String,
            name: String,
            invoiceType: Nullable<PostV1OperationTypesCreateRequestInvoiceType>? = nil,
            payerPartnerId: Nullable<String>? = nil,
            debitAccountCode: Nullable<String>? = nil,
            creditAccountCode: Nullable<String>? = nil,
            vatAccountCode: Nullable<String>? = nil,
            expenseAccountCode: Nullable<String>? = nil,
            advanceAccountCode: Nullable<String>? = nil,
            incomeAccountCode: Nullable<String>? = nil,
            isPurchase: Bool? = nil,
            isSale: Bool? = nil,
            isWriteOff: Bool? = nil,
            isInternalMovement: Bool? = nil,
            isPurchaseReturn: Bool? = nil,
            isSalesReturn: Bool? = nil,
            isConsignment: Bool? = nil,
            isProduction: Bool? = nil,
            isAssetIn: Bool? = nil,
            isAssetOut: Bool? = nil,
            isCashRegisterSale: Bool? = nil,
            includeInVatRegister: Bool? = nil,
            includeInSaft: Bool? = nil,
            isActive: Bool? = nil,
            sortOrder: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.code = code
            self.name = name
            self.invoiceType = invoiceType
            self.payerPartnerId = payerPartnerId
            self.debitAccountCode = debitAccountCode
            self.creditAccountCode = creditAccountCode
            self.vatAccountCode = vatAccountCode
            self.expenseAccountCode = expenseAccountCode
            self.advanceAccountCode = advanceAccountCode
            self.incomeAccountCode = incomeAccountCode
            self.isPurchase = isPurchase
            self.isSale = isSale
            self.isWriteOff = isWriteOff
            self.isInternalMovement = isInternalMovement
            self.isPurchaseReturn = isPurchaseReturn
            self.isSalesReturn = isSalesReturn
            self.isConsignment = isConsignment
            self.isProduction = isProduction
            self.isAssetIn = isAssetIn
            self.isAssetOut = isAssetOut
            self.isCashRegisterSale = isCashRegisterSale
            self.includeInVatRegister = includeInVatRegister
            self.includeInSaft = includeInSaft
            self.isActive = isActive
            self.sortOrder = sortOrder
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decode(String.self, forKey: .code)
            self.name = try container.decode(String.self, forKey: .name)
            self.invoiceType = try container.decodeNullableIfPresent(PostV1OperationTypesCreateRequestInvoiceType.self, forKey: .invoiceType)
            self.payerPartnerId = try container.decodeNullableIfPresent(String.self, forKey: .payerPartnerId)
            self.debitAccountCode = try container.decodeNullableIfPresent(String.self, forKey: .debitAccountCode)
            self.creditAccountCode = try container.decodeNullableIfPresent(String.self, forKey: .creditAccountCode)
            self.vatAccountCode = try container.decodeNullableIfPresent(String.self, forKey: .vatAccountCode)
            self.expenseAccountCode = try container.decodeNullableIfPresent(String.self, forKey: .expenseAccountCode)
            self.advanceAccountCode = try container.decodeNullableIfPresent(String.self, forKey: .advanceAccountCode)
            self.incomeAccountCode = try container.decodeNullableIfPresent(String.self, forKey: .incomeAccountCode)
            self.isPurchase = try container.decodeIfPresent(Bool.self, forKey: .isPurchase)
            self.isSale = try container.decodeIfPresent(Bool.self, forKey: .isSale)
            self.isWriteOff = try container.decodeIfPresent(Bool.self, forKey: .isWriteOff)
            self.isInternalMovement = try container.decodeIfPresent(Bool.self, forKey: .isInternalMovement)
            self.isPurchaseReturn = try container.decodeIfPresent(Bool.self, forKey: .isPurchaseReturn)
            self.isSalesReturn = try container.decodeIfPresent(Bool.self, forKey: .isSalesReturn)
            self.isConsignment = try container.decodeIfPresent(Bool.self, forKey: .isConsignment)
            self.isProduction = try container.decodeIfPresent(Bool.self, forKey: .isProduction)
            self.isAssetIn = try container.decodeIfPresent(Bool.self, forKey: .isAssetIn)
            self.isAssetOut = try container.decodeIfPresent(Bool.self, forKey: .isAssetOut)
            self.isCashRegisterSale = try container.decodeIfPresent(Bool.self, forKey: .isCashRegisterSale)
            self.includeInVatRegister = try container.decodeIfPresent(Bool.self, forKey: .includeInVatRegister)
            self.includeInSaft = try container.decodeIfPresent(Bool.self, forKey: .includeInSaft)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.sortOrder = try container.decodeIfPresent(Int64.self, forKey: .sortOrder)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.code, forKey: .code)
            try container.encode(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.invoiceType, forKey: .invoiceType)
            try container.encodeNullableIfPresent(self.payerPartnerId, forKey: .payerPartnerId)
            try container.encodeNullableIfPresent(self.debitAccountCode, forKey: .debitAccountCode)
            try container.encodeNullableIfPresent(self.creditAccountCode, forKey: .creditAccountCode)
            try container.encodeNullableIfPresent(self.vatAccountCode, forKey: .vatAccountCode)
            try container.encodeNullableIfPresent(self.expenseAccountCode, forKey: .expenseAccountCode)
            try container.encodeNullableIfPresent(self.advanceAccountCode, forKey: .advanceAccountCode)
            try container.encodeNullableIfPresent(self.incomeAccountCode, forKey: .incomeAccountCode)
            try container.encodeIfPresent(self.isPurchase, forKey: .isPurchase)
            try container.encodeIfPresent(self.isSale, forKey: .isSale)
            try container.encodeIfPresent(self.isWriteOff, forKey: .isWriteOff)
            try container.encodeIfPresent(self.isInternalMovement, forKey: .isInternalMovement)
            try container.encodeIfPresent(self.isPurchaseReturn, forKey: .isPurchaseReturn)
            try container.encodeIfPresent(self.isSalesReturn, forKey: .isSalesReturn)
            try container.encodeIfPresent(self.isConsignment, forKey: .isConsignment)
            try container.encodeIfPresent(self.isProduction, forKey: .isProduction)
            try container.encodeIfPresent(self.isAssetIn, forKey: .isAssetIn)
            try container.encodeIfPresent(self.isAssetOut, forKey: .isAssetOut)
            try container.encodeIfPresent(self.isCashRegisterSale, forKey: .isCashRegisterSale)
            try container.encodeIfPresent(self.includeInVatRegister, forKey: .includeInVatRegister)
            try container.encodeIfPresent(self.includeInSaft, forKey: .includeInSaft)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
            try container.encodeIfPresent(self.sortOrder, forKey: .sortOrder)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case code
            case name
            case invoiceType
            case payerPartnerId
            case debitAccountCode
            case creditAccountCode
            case vatAccountCode
            case expenseAccountCode
            case advanceAccountCode
            case incomeAccountCode
            case isPurchase
            case isSale
            case isWriteOff
            case isInternalMovement
            case isPurchaseReturn
            case isSalesReturn
            case isConsignment
            case isProduction
            case isAssetIn
            case isAssetOut
            case isCashRegisterSale
            case includeInVatRegister
            case includeInSaft
            case isActive
            case sortOrder
        }
    }
}