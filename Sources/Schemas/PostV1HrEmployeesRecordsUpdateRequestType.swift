import Foundation

public enum PostV1HrEmployeesRecordsUpdateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case education
    case qualification
    case certificate
    case training
}