import Foundation

public enum PostV1PayrollRunsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
}