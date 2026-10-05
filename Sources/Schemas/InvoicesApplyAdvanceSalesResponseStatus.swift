import Foundation

public enum InvoicesApplyAdvanceSalesResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}