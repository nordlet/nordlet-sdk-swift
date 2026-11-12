import Foundation

public enum TransactionsMatchBankRequestRemainderTreatment: String, Codable, Hashable, CaseIterable, Sendable {
    case advance
    case leaveOpen = "leave_open"
    case writeOff = "write_off"
}