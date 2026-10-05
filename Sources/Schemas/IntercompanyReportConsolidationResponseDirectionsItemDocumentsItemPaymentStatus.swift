import Foundation

public enum IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemPaymentStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unpaid
    case partial
    case paid
}