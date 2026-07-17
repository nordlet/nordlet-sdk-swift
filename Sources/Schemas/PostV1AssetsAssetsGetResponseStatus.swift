import Foundation

public enum PostV1AssetsAssetsGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case fullyDepreciated = "fully_depreciated"
    case disposed
}