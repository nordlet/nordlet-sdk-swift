import Foundation

public enum PostV1PayrollRunsApproveResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
}