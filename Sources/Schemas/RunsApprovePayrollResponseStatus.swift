import Foundation

public enum RunsApprovePayrollResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
    case reversed
}