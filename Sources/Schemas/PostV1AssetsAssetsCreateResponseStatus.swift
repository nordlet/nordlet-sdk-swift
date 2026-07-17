import Foundation

public enum PostV1AssetsAssetsCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case fullyDepreciated = "fully_depreciated"
    case disposed
}