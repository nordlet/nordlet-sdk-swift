import Foundation

public enum PostV1PayrollRunsGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
}