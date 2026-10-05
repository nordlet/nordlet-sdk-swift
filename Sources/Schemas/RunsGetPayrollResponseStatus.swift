import Foundation

public enum RunsGetPayrollResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
}