import Foundation

public enum EmployeesGetHrResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case terminated
}