import Foundation

public enum PostV1HrContractsEndResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case ended
}