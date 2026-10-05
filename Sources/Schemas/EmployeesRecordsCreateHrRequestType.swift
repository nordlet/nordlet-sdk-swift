import Foundation

public enum EmployeesRecordsCreateHrRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case education
    case qualification
    case certificate
    case training
}