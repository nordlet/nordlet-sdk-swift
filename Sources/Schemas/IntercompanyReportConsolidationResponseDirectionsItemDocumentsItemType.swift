import Foundation

public enum IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}