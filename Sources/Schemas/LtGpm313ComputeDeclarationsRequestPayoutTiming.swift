import Foundation

public enum LtGpm313ComputeDeclarationsRequestPayoutTiming: String, Codable, Hashable, CaseIterable, Sendable {
    case sameMonth = "same-month"
    case nextMonth = "next-month"
}