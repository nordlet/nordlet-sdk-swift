import Foundation

public enum EuDigitalReportingListDeclarationsResponseTransactionsItemDocumentType: String, Codable, Hashable, CaseIterable, Sendable {
    case invoice
    case creditNote = "credit_note"
}