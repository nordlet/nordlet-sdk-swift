import Foundation

public enum PostV1HrEmployeesRecordsUpdateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case education
    case qualification
    case certificate
    case training
}