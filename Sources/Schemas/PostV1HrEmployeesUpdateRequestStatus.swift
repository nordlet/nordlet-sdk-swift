import Foundation

public enum PostV1HrEmployeesUpdateRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case terminated
}