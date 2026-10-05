import Foundation

public enum EmployeesUpdateHrRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case terminated
}