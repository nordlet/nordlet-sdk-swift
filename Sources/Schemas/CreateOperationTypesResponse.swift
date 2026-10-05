import Foundation

public struct CreateOperationTypesResponse: Codable, Hashable, Sendable {
    public let id: String
    public let code: String
    public let name: String
    public let invoiceType: Nullable<CreateOperationTypesResponseInvoiceType>
    public let payerPartnerId: Nullable<String>
    public let debitAccountCode: Nullable<String>
    public let creditAccountCode: Nullable<String>
    public let vatAccountCode: Nullable<String>
    public let expenseAccountCode: Nullable<String>
    public let advanceAccountCode: Nullable<String>
    public let incomeAccountCode: Nullable<String>
    public let isPurchase: Bool
    public let isSale: Bool
    public let isWriteOff: Bool
    public let isInternalMovement: Bool
    public let isPurchaseReturn: Bool
    public let isSalesReturn: Bool
    public let isConsignment: Bool
    public let isProduction: Bool
    public let isAssetIn: Bool
    public let isAssetOut: Bool
    public let isCashRegisterSale: Bool
    public let includeInVatRegister: Bool
    public let includeInSaft: Bool
    public let isActive: Bool
    public let sortOrder: Int64
    public let createdAt: Date
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        code: String,
        name: String,
        invoiceType: Nullable<CreateOperationTypesResponseInvoiceType>,
        payerPartnerId: Nullable<String>,
        debitAccountCode: Nullable<String>,
        creditAccountCode: Nullable<String>,
        vatAccountCode: Nullable<String>,
        expenseAccountCode: Nullable<String>,
        advanceAccountCode: Nullable<String>,
        incomeAccountCode: Nullable<String>,
        isPurchase: Bool,
        isSale: Bool,
        isWriteOff: Bool,
        isInternalMovement: Bool,
        isPurchaseReturn: Bool,
        isSalesReturn: Bool,
        isConsignment: Bool,
        isProduction: Bool,
        isAssetIn: Bool,
        isAssetOut: Bool,
        isCashRegisterSale: Bool,
        includeInVatRegister: Bool,
        includeInSaft: Bool,
        isActive: Bool,
        sortOrder: Int64,
        createdAt: Date,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
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
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.invoiceType = try container.decode(Nullable<CreateOperationTypesResponseInvoiceType>.self, forKey: .invoiceType)
        self.payerPartnerId = try container.decode(Nullable<String>.self, forKey: .payerPartnerId)
        self.debitAccountCode = try container.decode(Nullable<String>.self, forKey: .debitAccountCode)
        self.creditAccountCode = try container.decode(Nullable<String>.self, forKey: .creditAccountCode)
        self.vatAccountCode = try container.decode(Nullable<String>.self, forKey: .vatAccountCode)
        self.expenseAccountCode = try container.decode(Nullable<String>.self, forKey: .expenseAccountCode)
        self.advanceAccountCode = try container.decode(Nullable<String>.self, forKey: .advanceAccountCode)
        self.incomeAccountCode = try container.decode(Nullable<String>.self, forKey: .incomeAccountCode)
        self.isPurchase = try container.decode(Bool.self, forKey: .isPurchase)
        self.isSale = try container.decode(Bool.self, forKey: .isSale)
        self.isWriteOff = try container.decode(Bool.self, forKey: .isWriteOff)
        self.isInternalMovement = try container.decode(Bool.self, forKey: .isInternalMovement)
        self.isPurchaseReturn = try container.decode(Bool.self, forKey: .isPurchaseReturn)
        self.isSalesReturn = try container.decode(Bool.self, forKey: .isSalesReturn)
        self.isConsignment = try container.decode(Bool.self, forKey: .isConsignment)
        self.isProduction = try container.decode(Bool.self, forKey: .isProduction)
        self.isAssetIn = try container.decode(Bool.self, forKey: .isAssetIn)
        self.isAssetOut = try container.decode(Bool.self, forKey: .isAssetOut)
        self.isCashRegisterSale = try container.decode(Bool.self, forKey: .isCashRegisterSale)
        self.includeInVatRegister = try container.decode(Bool.self, forKey: .includeInVatRegister)
        self.includeInSaft = try container.decode(Bool.self, forKey: .includeInSaft)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.sortOrder = try container.decode(Int64.self, forKey: .sortOrder)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encode(self.payerPartnerId, forKey: .payerPartnerId)
        try container.encode(self.debitAccountCode, forKey: .debitAccountCode)
        try container.encode(self.creditAccountCode, forKey: .creditAccountCode)
        try container.encode(self.vatAccountCode, forKey: .vatAccountCode)
        try container.encode(self.expenseAccountCode, forKey: .expenseAccountCode)
        try container.encode(self.advanceAccountCode, forKey: .advanceAccountCode)
        try container.encode(self.incomeAccountCode, forKey: .incomeAccountCode)
        try container.encode(self.isPurchase, forKey: .isPurchase)
        try container.encode(self.isSale, forKey: .isSale)
        try container.encode(self.isWriteOff, forKey: .isWriteOff)
        try container.encode(self.isInternalMovement, forKey: .isInternalMovement)
        try container.encode(self.isPurchaseReturn, forKey: .isPurchaseReturn)
        try container.encode(self.isSalesReturn, forKey: .isSalesReturn)
        try container.encode(self.isConsignment, forKey: .isConsignment)
        try container.encode(self.isProduction, forKey: .isProduction)
        try container.encode(self.isAssetIn, forKey: .isAssetIn)
        try container.encode(self.isAssetOut, forKey: .isAssetOut)
        try container.encode(self.isCashRegisterSale, forKey: .isCashRegisterSale)
        try container.encode(self.includeInVatRegister, forKey: .includeInVatRegister)
        try container.encode(self.includeInSaft, forKey: .includeInSaft)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.sortOrder, forKey: .sortOrder)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
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
        case createdAt
        case updatedAt
    }
}