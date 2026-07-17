import Foundation

public enum PostV1HrEmployeesUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case terminated
}