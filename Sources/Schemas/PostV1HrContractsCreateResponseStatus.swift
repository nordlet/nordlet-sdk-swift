import Foundation

public enum PostV1HrContractsCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case ended
}