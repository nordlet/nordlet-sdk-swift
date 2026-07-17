import Foundation

public enum PostV1AssetsAssetsModernizeResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case fullyDepreciated = "fully_depreciated"
    case disposed
}