import Foundation

public enum PostV1HrEmployeesRecordsCreateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case education
    case qualification
    case certificate
    case training
}