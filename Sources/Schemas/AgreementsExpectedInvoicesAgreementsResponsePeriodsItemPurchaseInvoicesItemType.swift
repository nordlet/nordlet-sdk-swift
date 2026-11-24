import Foundation

public enum AgreementsExpectedInvoicesAgreementsResponsePeriodsItemPurchaseInvoicesItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}