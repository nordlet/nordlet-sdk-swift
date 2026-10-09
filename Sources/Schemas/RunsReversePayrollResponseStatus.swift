import Foundation

public enum RunsReversePayrollResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
    case reversed
}