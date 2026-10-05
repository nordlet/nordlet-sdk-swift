import Foundation

public enum EmployeesListHrResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case terminated
}