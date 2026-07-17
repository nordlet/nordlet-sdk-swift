import Foundation

public enum PostV1HrEmployeesListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case terminated
}