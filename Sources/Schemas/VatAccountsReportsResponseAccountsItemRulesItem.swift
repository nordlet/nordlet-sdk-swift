import Foundation

public enum VatAccountsReportsResponseAccountsItemRulesItem: String, Codable, Hashable, CaseIterable, Sendable {
    case salesVatPayable = "sales.vatPayable"
    case salesOssVatPayable = "sales.ossVatPayable"
    case purchasesVatReceivable = "purchases.vatReceivable"
}