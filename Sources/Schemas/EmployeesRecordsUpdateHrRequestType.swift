import Foundation

public enum EmployeesRecordsUpdateHrRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case education
    case qualification
    case certificate
    case training
}