import Foundation

public enum LtGpm312ComputeDeclarationsRequestPayoutTiming: String, Codable, Hashable, CaseIterable, Sendable {
    case sameMonth = "same-month"
    case nextMonth = "next-month"
}