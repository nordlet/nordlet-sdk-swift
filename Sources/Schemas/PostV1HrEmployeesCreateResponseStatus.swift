import Foundation

public enum PostV1HrEmployeesCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case terminated
}