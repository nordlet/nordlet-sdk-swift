import Foundation

public enum RunsListPayrollResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
    case reversed
}