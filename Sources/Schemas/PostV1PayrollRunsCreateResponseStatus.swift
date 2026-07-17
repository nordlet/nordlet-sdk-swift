import Foundation

public enum PostV1PayrollRunsCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case approved
}