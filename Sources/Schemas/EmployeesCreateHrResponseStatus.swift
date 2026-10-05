import Foundation

public enum EmployeesCreateHrResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case terminated
}