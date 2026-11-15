import Foundation

public enum FxRevaluationRunLedgerResponseLinesItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case receivable
    case payable
    case bank
}