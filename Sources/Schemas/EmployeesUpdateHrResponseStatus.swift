import Foundation

public enum EmployeesUpdateHrResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case terminated
}