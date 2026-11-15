import Foundation

public enum InvoicesReverseSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case reversed
}