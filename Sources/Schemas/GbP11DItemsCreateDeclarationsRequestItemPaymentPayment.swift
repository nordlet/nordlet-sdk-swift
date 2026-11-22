import Foundation

public enum GbP11DItemsCreateDeclarationsRequestItemPaymentPayment: String, Codable, Hashable, CaseIterable, Sendable {
    case domesticBills = "domestic bills"
    case accountancyFees = "accountancy fees"
    case privateEducation = "private education"
    case privateCarExpenses = "private car expenses"
    case seasonTickets = "season tickets"
    case other
    case multiple
}