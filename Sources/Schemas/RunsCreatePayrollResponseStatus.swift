import Foundation

public enum RunsCreatePayrollResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
    case reversed
}