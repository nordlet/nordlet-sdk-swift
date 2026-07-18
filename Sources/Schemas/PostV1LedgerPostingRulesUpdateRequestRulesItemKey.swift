import Foundation

public enum PostV1LedgerPostingRulesUpdateRequestRulesItemKey: String, Codable, Hashable, CaseIterable, Sendable {
    case salesReceivable = "sales.receivable"
    case salesRevenueProducts = "sales.revenueProducts"
    case salesRevenueServices = "sales.revenueServices"
    case salesVatPayable = "sales.vatPayable"
    case salesAdvancesReceived = "sales.advancesReceived"
    case purchasesPayables = "purchases.payables"
    case purchasesVatReceivable = "purchases.vatReceivable"
    case purchasesGoodsForResale = "purchases.goodsForResale"
    case purchasesDefaultExpense = "purchases.defaultExpense"
    case inventoryCogs = "inventory.cogs"
    case inventoryStock = "inventory.stock"
    case bankFxGain = "bank.fxGain"
    case bankFxLoss = "bank.fxLoss"
    case settlementsFees = "settlements.fees"
    case settlementsCommissionRevenue = "settlements.commissionRevenue"
    case settlementsSellerPayable = "settlements.sellerPayable"
    case settlementsSuspense = "settlements.suspense"
    case revenueDeferredIncome = "revenue.deferredIncome"
    case revenueContractAsset = "revenue.contractAsset"
    case revenueRefundLiability = "revenue.refundLiability"
}