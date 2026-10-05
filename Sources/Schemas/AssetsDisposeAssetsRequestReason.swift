import Foundation

public enum AssetsDisposeAssetsRequestReason: String, Codable, Hashable, CaseIterable, Sendable {
    case sold
    case scrapped
    case writtenOff = "written_off"
}