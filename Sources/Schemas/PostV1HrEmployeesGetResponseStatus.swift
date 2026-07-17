import Foundation

public enum PostV1HrEmployeesGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case terminated
}